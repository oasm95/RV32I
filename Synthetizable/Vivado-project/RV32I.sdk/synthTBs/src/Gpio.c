/*
 * Gpio.c
 *
 *  Created on: Mar 27, 2022
 *      Author: Yo admin
 */

#include "Gpio.h"


/************************** Variable Definitions **************************/
static u32 Input_Pin; /* Switch button */
static u32 Output_Pin; /* LED button */

/*
 * The following are declared globally so they are zeroed and can be
 * easily accessible from a debugger.
 */
static XGpioPs Gpio;	/* The driver instance for GPIO Device. */

/*****************************************************************************/
/**
*
* Main function to call the example.
*
* @param	None
*
* @return
*		- XST_SUCCESS if the example has completed successfully.
*		- XST_FAILURE if the example has failed.
*
* @note		None
*
******************************************************************************/
int GPIOConfig()
{
	int Status;
	XGpioPs_Config *ConfigPtr;
	int Type_of_board;

	Type_of_board = XGetPlatform_Info();
	switch (Type_of_board) {
		case XPLAT_ZYNQ_ULTRA_MP:
			Input_Pin = 55;
			Output_Pin = 54;
			break;

		case XPLAT_ZYNQ:
			Input_Pin = 55;
			Output_Pin = 54;
			break;
		}

	/* Initialize the GPIO driver. */
	ConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
	Status = XGpioPs_CfgInitialize(&Gpio, ConfigPtr,
					ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	XGpioPs_SetDirectionPin(&Gpio, Output_Pin, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, Output_Pin, 1);
	XGpioPs_SetDirectionPin(&Gpio, Input_Pin, 0x0);
	return XST_SUCCESS;
}

void GPIOSetOuput(int state)
{
	XGpioPs_WritePin(&Gpio, Output_Pin,(u32)state);
}

int GPIOGetInput()
{
	return XGpioPs_ReadPin(&Gpio, Input_Pin);
}

int testGPIO(void)
{
	int Status;

	printf("GPIO Polled Mode Example Test \r\n");
	Status = GPIOConfig();
	if (Status != XST_SUCCESS) {
		printf("GPIO Polled Mode Config Failed\r\n");
		return XST_FAILURE;
	}
	volatile int Delay;
	u32 LedLoop;

	/* Set the GPIO output to be low. */
	GPIOSetOuput(0x0);


	for (LedLoop = 0; LedLoop < LED_MAX_BLINK; LedLoop ++) {


#ifndef __SIM__
		/* Wait a small amount of time so the LED is visible. */
		for (Delay = 0; Delay < LED_DELAY; Delay++);

#endif
		/* Set the GPIO Output to High. */
		GPIOSetOuput(0x1);

		/*
		 * Read the state of the data and verify. If the data
		 * read back is not the same as the data written then
		 * return FAILURE.
		 */

#ifndef __SIM__
		/* Wait a small amount of time so the LED is visible. */
		for (Delay = 0; Delay < LED_DELAY; Delay++);

#endif

		/* Clear the GPIO Output. */
		GPIOSetOuput(0x0);
	}
	printf("Press button to continue \n\r");
	while( GPIOGetInput());

	printf("Successfully ran GPIO Polled Mode Example Test\r\n");
	return XST_SUCCESS;
}

