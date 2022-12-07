/*
 * tvRV32I.h
 *
 *  Created on: Nov 26, 2022
 *      Author: Yoadmin
 */

#ifndef SRC_TVRV32I_H_
#define SRC_TVRV32I_H_


struct program
{
	unsigned int *text;
	unsigned int *data;
	int textlen;
	int datalen;
};


struct program* configtbRV32I(unsigned int program);
int CheckResultsRV32I(void *Bufferptr);


#endif /* SRC_TVRV32I_H_ */
