#include "tvRV32I.h"

#define NPROGRAMS 1
/*
extern unsigned char test1_start;
extern unsigned char test1_end;
extern unsigned char test2_start;
extern unsigned char test2_end;
extern unsigned char test3_start;
extern unsigned char test3_end;
extern unsigned char test4_start;
extern unsigned char test4_end;
extern unsigned char test5_start;
extern unsigned char test5_end;
*/
extern unsigned char dhrystoneI_start;
extern unsigned char dhrystoneI_end;
extern unsigned char dhrystoneD_start;
extern unsigned char dhrystoneD_end;

static int alreadyfilled = 0;
static struct program programs[NPROGRAMS];


static void fillprogramstable(struct program *prg,int index)
{
	switch (index)
	{/*
	case 0:
		prg->text = (unsigned int*)&test1_start;
		prg->textlen = &test1_end - &test1_start;
		prg->data =0;
		prg->datalen = 0;
		break;
	case 1:
		prg->text = (unsigned int*)&test2_start;
		prg->textlen = &test2_end - &test2_start;
		prg->data =0;
		prg->datalen = 0;
		break;
	case 2:
		prg->text = (unsigned int*)&test3_start;
		prg->textlen = &test3_end - &test3_start;
		prg->data =0;
		prg->datalen = 0;
		break;
	case 3:
		prg->text = (unsigned int*)&test4_start;
		prg->textlen = &test4_end - &test4_start;
		prg->data =0;
		prg->datalen = 0;
		break;
	case 4:
		prg->text = (unsigned int*)&test5_start;
		prg->textlen = &test5_end - &test5_start;
		prg->data =0;
		prg->datalen = 0;
		break;*/
	case 0:
		prg->text = (unsigned int*)&dhrystoneI_start;
		prg->textlen = &dhrystoneI_end - &dhrystoneI_start;
		prg->data =(unsigned int*)&dhrystoneD_start;
		prg->datalen = &dhrystoneD_end - &dhrystoneD_start;
	}
}

struct program* configtbRV32I(unsigned int program)
{
	if(alreadyfilled==0)
	{
		for(int i = 0;i<NPROGRAMS;i++)
		{
			fillprogramstable(&programs[i],i);
		}
		alreadyfilled = 1;
	}

	if (program > NPROGRAMS)
		return 0;

	return &programs[program];
}


int CheckResultsRV32I(void *Bufferptr)
{
	return 1;
}