/*
 * start.c
 *
 *  Created on: Mar 19, 2022
 *      Author: Yoadmin
 */

#include "CDMACtr.h"
#include "Gpio.h"
#include "tb/testbechtypes.h"
//#include "tb/testvectorImmDecoder.h"
//#include "tb/testvectorALU.h"
//#include "tb/testvectorCU.h"
//#include "tb/testvectorMemInterface.h"
//#include "tb/testvectorPC.h"
#include "tb/testvectorRegFile.h"


#define BRAM_DUT_INPUT1_ADDR 0xC0000000
#define BRAM_DUT_INPUT2_ADDR 0xC2000000
#define BRAM_DUT_OUTPUT1_ADDR 0xC4000000
#define BRAM_DUT_OUTPUT2_ADDR 0xC6000000

#define BUFFER_BYTESIZE		8192	/* Length of the buffers for DMA*/


volatile static u8 DESTBuffer1[BUFFER_BYTESIZE] __attribute__ ((aligned (64)));
volatile static u8 DESTBuffer2[BUFFER_BYTESIZE] __attribute__ ((aligned (64)));

volatile static int Done = 0;	/* Dma transfer is done */
volatile static int Error = 0;	/* Dma Bus Error occurs */

void Example_CallBack(void *CallBackRef, u32 IrqMask, int *IgnorePtr)
{

	if (IrqMask & XAXICDMA_XR_IRQ_ERROR_MASK) {
		Error = TRUE;
	}

	if (IrqMask & XAXICDMA_XR_IRQ_IOC_MASK) {
		Done = TRUE;
	}

}

void initmem(void *src, int NBytes)
{
	int cnt;
	int *ptr =(int *) src;
	for(cnt = (NBytes/sizeof(cnt)); cnt; cnt--)
	{
		*ptr = (~cnt<<15) | cnt;
		ptr++;
	}
}

int main(void)
{

	//************************ Configuration ***************************************
	int  cnt = 0;
	int status;
	xil_printf("\r\n--- Entering main() --- \r\n");
	xil_printf("\r\n--- configuring DMA() --- \r\n");
	status =  CDMAconfigure();
	if (status != XST_SUCCESS)
		xil_printf("\r\n--- ERROR configuring DMA() --- \r\n");
	xil_printf("\r\n--- configuring GPIO --- \r\n");
	status =  GPIOConfig();
	if (status != XST_SUCCESS)
		xil_printf("\r\n--- ERROR configuring GPIO --- \r\n");

	GPIOSetOuput(0x0);

	struct tbconfig tbdata;

	configtbRF(&tbdata);

	//*********************** Sources transfer data **********************************
	int tbsize = (tbdata.sourcelen <= BUFFER_BYTESIZE) ? tbdata.sourcelen : BUFFER_BYTESIZE;
	xil_printf("\r\n--- setting buffer --- \r\n");
	xil_printf("\r\n--- Making first transfer RAM->PL --- \r\n");
	status = CDMAtransfer((void *)tbdata.source1,(void *)BRAM_DUT_INPUT1_ADDR,tbsize,Example_CallBack,NULL,DMA_CACHE_FLUSHSRC);
	if (status != XST_SUCCESS)
		xil_printf("\r\n--- ERROR in transfer() --- \r\n");

	while (!Done && !Error) cnt++;
	xil_printf("\r\n--- DONE = %d, ERROR = %d --- \r\n",Done,Error);
	xil_printf("\r\n--- It took %d cycles --- \r\n",cnt);

	if(tbdata.source2 != NULL)
	{
		Done = 0; Error = 0; cnt=0;
		xil_printf("\r\n--- Making second transfer RAM->PL --- \r\n");
		status = CDMAtransfer((void *)tbdata.source2,(void *)BRAM_DUT_INPUT2_ADDR,tbsize,Example_CallBack,NULL,DMA_CACHE_FLUSHSRC);
		if (status != XST_SUCCESS)
			xil_printf("\r\n--- ERROR in transfer() --- \r\n");

		while (!Done && !Error) cnt++;
		xil_printf("\r\n--- DONE = %d, ERROR = %d --- \r\n",Done,Error);
		xil_printf("\r\n--- It took %d cycles --- \r\n",cnt);
	}
	//********************FPGA - RESULTS GENERATION ************************////////
	cnt = 0;
	xil_printf("\r\n--- Waiting for FPGA Processing --- \r\n");
	GPIOSetOuput(0x1);
	xil_printf("\r\n--- Generating data --- \r\n");
	int nres = GenerateResultsRegFile();
	if (nres != tbdata.resultslen) xil_printf("\r\n--- Results Length mismatch --- \r\n");
	while(!GPIOGetInput())cnt++;
	xil_printf("\r\n--- FPGA %d It took %d cycles --- \r\n",tbsize,cnt);
	//*********************** Transfering FPGA RESULTS 1  **********************************
	Done = 0; Error = 0; cnt=0;
	xil_printf("\r\n--- Making output transfer PL->RAM --- \r\n");
	status = CDMAtransfer((void *)BRAM_DUT_OUTPUT1_ADDR,(void *)DESTBuffer1,tbsize,Example_CallBack,NULL,DMA_CACHE_FLUSHDST);
	if (status != XST_SUCCESS)
		xil_printf("\r\n--- ERROR in transfer() --- \r\n");

	while (!Done && !Error) cnt++;
	xil_printf("\r\n--- DONE = %d, ERROR = %d --- \r\n",Done,Error);
	xil_printf("\r\n--- It took %d cycles --- \r\n",cnt);

	//*********************** Transfering FPGA RESULTS 2  **********************************
	Done = 0; Error = 0; cnt=0;
	xil_printf("\r\n--- Making output transfer PL->RAM --- \r\n");
	status = CDMAtransfer((void *)BRAM_DUT_OUTPUT2_ADDR,(void *)DESTBuffer2,tbsize,Example_CallBack,NULL,DMA_CACHE_FLUSHDST);
	if (status != XST_SUCCESS)
		xil_printf("\r\n--- ERROR in transfer() --- \r\n");

	while (!Done && !Error) cnt++;
	xil_printf("\r\n--- DONE = %d, ERROR = %d --- \r\n",Done,Error);
	xil_printf("\r\n--- It took %d cycles --- \r\n",cnt);

	//********************* Result checking *******************************************
	xil_printf("\r\n--- checking results --- \r\n");
	nres = CheckResultsRegFile((int *)DESTBuffer1,(int *)DESTBuffer2);
	xil_printf("\r\n--- %d Errors --- \r\n", nres);
	xil_printf("\r\n--- Done Bye --- \r\n");
	return 0;
}
