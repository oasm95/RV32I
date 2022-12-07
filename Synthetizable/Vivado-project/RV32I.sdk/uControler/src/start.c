/*
 * start.c
 *
 *  Created on: Mar 19, 2022
 *      Author: Yoadmin
 */

#include "CDMACtr.h"
#include "Gpio.h"
#include "tb/testbechtypes.h"
#include "tb/tvRV32I.h"



#define BRAM_INSTR_ADDR 0x80000000
#define BRAM_DATA_ADDR 0x82000000

#define BUFFER_BYTESIZE		8192	/* Length of the buffers for DMA*/


volatile static u8 DESTBuffer1[BUFFER_BYTESIZE] __attribute__ ((aligned (64)));


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



	struct program *tbdata = configtbRV32I(0);

	//*********************** Sources transfer data **********************************
	int tbsize = (tbdata->textlen <= BUFFER_BYTESIZE) ? tbdata->textlen : BUFFER_BYTESIZE;
	xil_printf("\r\n--- setting buffer --- \r\n");
	xil_printf("\r\n--- Transfering %d bytes .text RAM->PL --- \r\n",tbsize);
	status = CDMAtransfer((void *)tbdata->text,(void *)BRAM_INSTR_ADDR,tbsize,Example_CallBack,NULL,DMA_CACHE_FLUSHSRC);
	if (status != XST_SUCCESS)
		xil_printf("\r\n--- ERROR in transfer() --- \r\n");

	while (!Done && !Error) cnt++;
	xil_printf("\r\n--- DONE = %d, ERROR = %d --- \r\n",Done,Error);
	xil_printf("\r\n--- It took %d cycles --- \r\n",cnt);

	if(tbdata->data != NULL)
	{
		Done = 0; Error = 0; cnt=0;
		tbsize = (tbdata->datalen <= BUFFER_BYTESIZE) ? tbdata->datalen : BUFFER_BYTESIZE;
		xil_printf("\r\n--- Transfering %d bytes .data RAM->PL --- \r\n",tbsize);
		status = CDMAtransfer((void *)tbdata->data,(void *)BRAM_DATA_ADDR,tbsize,Example_CallBack,NULL,DMA_CACHE_FLUSHSRC);
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

	while(!GPIOGetInput())cnt++;
	xil_printf("\r\n--- RV32I took %d cycles --- \r\n",cnt);
	//*********************** Transfering FPGA RESULTS   **********************************
	Done = 0; Error = 0; cnt=0;
	xil_printf("\r\n--- Making output transfer PL->RAM --- \r\n");
	status = CDMAtransfer((void *)BRAM_DATA_ADDR,(void *)DESTBuffer1,64,Example_CallBack,NULL,DMA_CACHE_FLUSHDST);
	if (status != XST_SUCCESS)
		xil_printf("\r\n--- ERROR in transfer() --- \r\n");

	while (!Done && !Error) cnt++;
	xil_printf("\r\n--- DONE = %d, ERROR = %d --- \r\n",Done,Error);
	xil_printf("\r\n--- It took %d cycles --- \r\n",cnt);

	int *ptr = (int *)DESTBuffer1;
	int exitcode = ptr[0];
	int byteswritten = ptr[2];
	int buffermaxsize = ptr[1];
	int bufferptr = ptr[3];

	//********************* Result checking *******************************************
	xil_printf("\r\n--- checking results --- \r\n");
	xil_printf("\r\n--- Program finished with status code %d, wrote %d bytes to stdout--",exitcode,byteswritten);
	//*********************** Transfering FPGA RESULTS   **********************************
	Done = 0; Error = 0; cnt=0;
	xil_printf("\r\n--- transfering pbuffer transfer PL->RAM --- \r\n");
	status = CDMAtransfer((void *)bufferptr,(void *)DESTBuffer1,byteswritten,Example_CallBack,NULL,DMA_CACHE_FLUSHDST);
	if (status != XST_SUCCESS)
		xil_printf("\r\n--- ERROR in transfer() --- \r\n");

	while (!Done && !Error) cnt++;
	xil_printf("\r\n--- DONE = %d, ERROR = %d --- \r\n",Done,Error);
	xil_printf("\r\n--- It took %d cycles ---\r\n\tprint buffer:\r\n\r\n",cnt);
	DESTBuffer1[byteswritten+1] =0;
	xil_printf("%s",DESTBuffer1);

	xil_printf("\r\n--- Done Bye --- \r\n");
	return 0;
}