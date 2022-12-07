/*
 * CDMACtr.h
 *
 *  Created on: Mar 19, 2022
 *      Author: Yoadmin
 */

#ifndef SRC_CDMACTR_H_
#define SRC_CDMACTR_H_

#include "xaxicdma.h"
#include "xdebug.h"
#include "xil_exception.h"
#include "xil_cache.h"
#include "xparameters.h"

#ifdef XPAR_INTC_0_DEVICE_ID
#include "xintc.h"
#else
#include "xscugic.h"
#endif

#ifndef __MICROBLAZE__
#include "xpseudo_asm_gcc.h"
#endif

#ifdef __arm__
#include "xreg_cortexa9.h"
#endif

#ifdef __aarch64__
#include "xreg_cortexa53.h"
#endif


/******************** Constant Definitions **********************************/

#ifndef TESTAPP_GEN
/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#ifdef XPAR_INTC_0_DEVICE_ID
#define DMA_CTRL_DEVICE_ID	XPAR_AXICDMA_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_INTC_0_DEVICE_ID
#define DMA_CTRL_IRPT_INTR	XPAR_INTC_0_AXICDMA_0_VEC_ID
#else
#define DMA_CTRL_DEVICE_ID 	XPAR_AXICDMA_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define DMA_CTRL_IRPT_INTR	XPAR_FABRIC_AXICDMA_0_VEC_ID
#endif
#endif

#define DMA_CACHE_FLUSHSRC 1
#define DMA_CACHE_FLUSHDST 2




#define NUMBER_OF_TRANSFERS	4	/* Number of simple transfers to do */

/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/
#if (!defined(DEBUG))
extern void xil_printf(const char *format, ...);
#endif


int testapp(void);
int CDMAconfigure(void);
int CDMAtransfer(void *SrcBuffer, void *DestBuffer,int Length,void func(), void *CallBackRef,int cacheflags);

#endif /* SRC_CDMACTR_H_ */
