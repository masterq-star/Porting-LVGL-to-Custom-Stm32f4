################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Ui_Design/ui.c \
../Ui_Design/ui_helpers.c 

OBJS += \
./Ui_Design/ui.o \
./Ui_Design/ui_helpers.o 

C_DEPS += \
./Ui_Design/ui.d \
./Ui_Design/ui_helpers.d 


# Each subdirectory must supply rules for building sources it contributes
Ui_Design/%.o Ui_Design/%.su Ui_Design/%.cyclo: ../Ui_Design/%.c Ui_Design/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Ui_Design

clean-Ui_Design:
	-$(RM) ./Ui_Design/ui.cyclo ./Ui_Design/ui.d ./Ui_Design/ui.o ./Ui_Design/ui.su ./Ui_Design/ui_helpers.cyclo ./Ui_Design/ui_helpers.d ./Ui_Design/ui_helpers.o ./Ui_Design/ui_helpers.su

.PHONY: clean-Ui_Design

