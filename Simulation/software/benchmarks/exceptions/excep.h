#ifndef _EXCEP_H
#define _EXCEP_H

// #define misalignedLoadHW() asm volatile ("lh   x0,7(x0)")
// 
// #define misalignedLoadW() asm volatile ("lw   x0,7(x0)")
// 
// #define misalignedStoreHW() asm volatile ("sh   x0,7(x0)")
// 
// #define misalignedStoreW() asm volatile ("sw   x0,7(x0)")
// 
// #define ebreak() asm volatile ("ebreak")
// 
// #define illop() asm volatile ("sret")
// 
// #define misalignedJAL() asm volatile ("j     .+2")
// 
// #define misalignedJALR() asm volatile ("jalr   x0, 3")
// 
// #define misalignedCondJMPTrue() asm volatile ("beq  x0,x0, .+2")
// 
// #define misalignedCondJMPFalse() asm volatile ("bne  x0,x0, .+2")


void misalignedLoadHW() { asm volatile ("lh   x0,7(x0)"); }

void misalignedLoadW(){ asm volatile ("lw   x0,7(x0)");}

void misalignedStoreHW() {asm volatile ("sh   x0,7(x0)");}

void misalignedStoreW(){ asm volatile ("sw   x0,7(x0)");}

void ebreak() {asm volatile ("ebreak");}

void illop() {asm volatile ("sret");}

void misalignedJAL() {asm volatile ("j     .+2");}

void misalignedJALR() {asm volatile ("jalr   x0, 3");}

void misalignedCondJMPTrue() {asm volatile ("beq  x0,x0, .+2");}

void misalignedCondJMPFalse() {asm volatile ("bne  x0,x0, .+2");}

#endif
