################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../test/ui.c \
../test/ui_helpers.c 

OBJS += \
./test/ui.o \
./test/ui_helpers.o 

C_DEPS += \
./test/ui.d \
./test/ui_helpers.d 


# Each subdirectory must supply rules for building sources it contributes
test/%.o test/%.su test/%.cyclo: ../test/%.c test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-test

clean-test:
	-$(RM) ./test/ui.cyclo ./test/ui.d ./test/ui.o ./test/ui.su ./test/ui_helpers.cyclo ./test/ui_helpers.d ./test/ui_helpers.o ./test/ui_helpers.su

.PHONY: clean-test

