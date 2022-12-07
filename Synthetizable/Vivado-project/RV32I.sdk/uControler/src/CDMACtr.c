/*
 * CDMACtr.c
 *
 *  Created on: Mar 19, 2022
 *      Author: Yoadmin
 */


#include "CDMACtr.h"




#ifdef XPAR_INTC_0_DEVICE_ID
static int SetupIntrSystem(XIntc *IntcInstancePtr, XAxiCdma *InstancePtr,
			u32 IntrId);

static void DisableIntrSystem(XIntc *IntcInstancePtr, u32 IntrId);

int XAxiCdma_SimpleIntrExample(XIntc *IntcInstancePtr, XAxiCdma *InstancePtr,
	u16 DeviceId,u32 IntrId);
#else
static int SetupIntrSystem(XScuGic *IntcInstancePtr, XAxiCdma *InstancePtr,	u32 IntrId);

static void DisableIntrSystem(XScuGic *IntcInstancePtr, u32 IntrId);

int XAxiCdma_SimpleIntrExample(u16 DeviceId,u32 IntrId);

#endif

/************************** Variable Definitions *****************************/

#ifndef TESTAPP_GEN
static XAxiCdma InstancePtr;	/* Instance of the XAxiCdma */
#ifdef XPAR_INTC_0_DEVICE_ID
static XIntc IntcController;	/* Instance of the Interrupt Controller */
#else
static XScuGic IntcInstancePtr;	/* Instance of the Interrupt Controller */
#endif
#endif


/* Source and Destination buffer for DMA transfer.
 */


/* Shared variables used to test the callbacks.
 */


volatile static int NPases = 0;



int CDMAconfigure()
{
	XAxiCdma_Config *CfgPtr;
	int Status;

	/* Initialize the XAxiCdma device.
	 */
	CfgPtr = XAxiCdma_LookupConfig(DMA_CTRL_DEVICE_ID);
	if (!CfgPtr) {
		return XST_FAILURE;
	}

	Status = XAxiCdma_CfgInitialize(&InstancePtr, CfgPtr, CfgPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Setup the interrupt system
	 */
	Status = SetupIntrSystem(&IntcInstancePtr, &InstancePtr, DMA_CTRL_IRPT_INTR);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Enable all (completion/error/delay) interrupts
	 */
	XAxiCdma_IntrEnable(&InstancePtr, XAXICDMA_XR_IRQ_ALL_MASK);

	return XST_SUCCESS;
}

//Length is in bytes
int CDMAtransfer(void *SrcBuffer, void *DestBuffer,int Length,void func(), void *CallBackRef,int cacheflags)
{

	int status;

	/* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
	 * is enabled
	 */
	if (cacheflags & DMA_CACHE_FLUSHSRC)
	{
		Xil_DCacheFlushRange((UINTPTR)SrcBuffer, Length);
	#ifdef __aarch64__
		Xil_DCacheFlushRange((UINTPTR)DestBuffer, Length);
	#endif
	}


	status = XAxiCdma_SimpleTransfer(&InstancePtr, (UINTPTR)SrcBuffer,
			(UINTPTR)DestBuffer, Length, (XAxiCdma_CallBackFn)func,
			CallBackRef);
	if (cacheflags & DMA_CACHE_FLUSHDST)
#ifndef __aarch64__
	Xil_DCacheFlushRange((UINTPTR)DestBuffer, Length);
#endif

	return status;
}
/*****************************************************************************/
/**
* The entry point for this example. It invokes the example function,
* and reports the execution status.
*
* @param	None.
*
* @return
*		- XST_SUCCESS if example finishes successfully
*		- XST_FAILURE if example fails.
*
* @note		None
*
******************************************************************************/
#ifndef TESTAPP_GEN
int testapp()
{


	xil_printf("\r\n--- Entering testapp() --- \r\n");

	/* Run the interrupt example for simple transfer
	 */


	xil_printf("Successfully ran XAxiCdma_SimpleIntr Example\r\n");
	xil_printf("--- Exiting main() --- \r\n");

	return XST_SUCCESS;

}
#endif

/*****************************************************************************/
/**
* The example to do the simple transfer through interrupt.
*
* @param	IntcInstancePtr is a pointer to the INTC instance
* @param	InstancePtr is a pointer to the XAxiCdma instance
* @param	DeviceId is the Device Id of the XAxiCdma instance
* @param	IntrId is the interrupt Id for the XAxiCdma instance in build
*
* @return
* 		- XST_SUCCESS if example finishes successfully
* 		- XST_FAILURE if error occurs
*
* @note		If the hardware build has problems with interrupt,
*		then this function hangs
*
******************************************************************************/

/*****************************************************************************/
/*
*
* This function does one simple transfer
*
* @param	InstancePtr is a pointer to the XAxiCdma instance
* @param	Length is the transfer length
* @param	Retries is how many times to retry on submission
*
* @return
*		- XST_SUCCESS if transfer is successful
*		- XST_FAILURE if either the transfer fails or the data has
*		  error
*
* @note		None
*
******************************************************************************/



/******************************************************************************/
/*
* Setup the interrupt system, including:
*  	- Initialize the interrupt controller,
*  	- Register the XAxiCdma interrupt handler to the interrupt controller
*  	- Enable interrupt
*
* @param	IntcInstancePtr is a pointer to the instance of the INTC
* @param	InstancePtr is a pointer to the instance of the XAxiCdma
* @param	IntrId is the interrupt Id for XAxiCdma
*
* @return
* 		- XST_SUCCESS if interrupt system setup successfully
* 		- XST_FAILURE if error occurs
*
* @note		None
*
*******************************************************************************/
#ifdef XPAR_INTC_0_DEVICE_ID
static int SetupIntrSystem(XIntc *IntcInstancePtr, XAxiCdma *InstancePtr,
			u32 IntrId)
{
	int Status;

#ifndef TESTAPP_GEN
	/*
	 * Initialize the interrupt controller driver
	 */
	Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
#endif

	/*
	 * Connect the driver interrupt handler
	 * It will call the example callback upon transfer completion
	 */
	Status = XIntc_Connect(IntcInstancePtr, IntrId,
			(XInterruptHandler)XAxiCdma_IntrHandler,
			(void *)InstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

#ifndef TESTAPP_GEN
	/*
	 * Start the interrupt controller such that interrupts are enabled for
	 * all devices that cause interrupts. Specify real mode so that the DMA
	 * engine can generate interrupts through the interrupt controller
	 */
	Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
#endif

	/*
	 * Enable the interrupt for the DMA engine
	 */
	XIntc_Enable(IntcInstancePtr, IntrId);

#ifndef TESTAPP_GEN

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler)XIntc_InterruptHandler,
			(void *)IntcInstancePtr);

	Xil_ExceptionEnable();

#endif /* TESTAPP_GEN */

	return XST_SUCCESS;
}

#else

static int SetupIntrSystem(XScuGic *IntcInstancePtr, XAxiCdma *InstancePtr,
			u32 IntrId)

{
	int Status;

#ifndef TESTAPP_GEN
	/*
	 * Initialize the interrupt controller driver
	 */
	XScuGic_Config *IntcConfig;


	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
					IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
#endif

	XScuGic_SetPriorityTriggerType(IntcInstancePtr, IntrId, 0xA0, 0x3);

	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	Status = XScuGic_Connect(IntcInstancePtr, IntrId,
				(Xil_InterruptHandler)XAxiCdma_IntrHandler,
				InstancePtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	/*
	 * Enable the interrupt for the DMA device.
	 */
	XScuGic_Enable(IntcInstancePtr, IntrId);



#ifndef TESTAPP_GEN

	Xil_ExceptionInit();

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
				(Xil_ExceptionHandler)XScuGic_InterruptHandler,
				IntcInstancePtr);


	/*
	 * Enable interrupts in the Processor.
	 */
	Xil_ExceptionEnable();

#endif /* TESTAPP_GEN */

	return XST_SUCCESS;
}
#endif

/*****************************************************************************/
/*
* Callback function for the simple transfer. It is called by the driver's
* interrupt handler.
*
* @param	CallBackRef is the reference pointer registered through
*		transfer submission. In this case, it is the pointer to the
* 		driver instance
* @param	IrqMask is the interrupt mask the driver interrupt handler
*		passes to the callback function.
* @param	IgnorePtr is a pointer that is ignored by simple callback
* 		function
*
* @return	None
*
* @note		None
*
******************************************************************************/



/*****************************************************************************/
/*
*
* This function disables the interrupt for the XAxiCdma device
*
* @param	IntcInstancePtr is the pointer to the instance of the INTC
* @param	IntrId is the interrupt Id for the XAxiCdma instance
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
#ifdef XPAR_INTC_0_DEVICE_ID
static void DisableIntrSystem(XIntc *IntcInstancePtr, u32 IntrId)
{

	/* Disconnect the interrupt
	 */
	XIntc_Disconnect(IntcInstancePtr, IntrId);

}
#else
static void DisableIntrSystem(XScuGic *IntcInstancePtr, u32 IntrId)
{

	/* Disconnect the interrupt
	 */
	XScuGic_Disable(IntcInstancePtr, IntrId);
	XScuGic_Disconnect(IntcInstancePtr, IntrId);


}

#endif

