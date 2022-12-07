################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../src/binaries/test1.s 

OBJS += \
./src/binaries/test1.o 


# Each subdirectory must supply rules for building sources it contributes
src/binaries/%.o: ../src/binaries/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc assembler'
	arm-none-eabi-gcc -c  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


