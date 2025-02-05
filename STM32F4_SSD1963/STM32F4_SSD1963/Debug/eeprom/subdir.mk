################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../eeprom/45dbxx.c \
../eeprom/eeprom.c 

OBJS += \
./eeprom/45dbxx.o \
./eeprom/eeprom.o 

C_DEPS += \
./eeprom/45dbxx.d \
./eeprom/eeprom.d 


# Each subdirectory must supply rules for building sources it contributes
eeprom/%.o eeprom/%.su eeprom/%.cyclo: ../eeprom/%.c eeprom/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-eeprom

clean-eeprom:
	-$(RM) ./eeprom/45dbxx.cyclo ./eeprom/45dbxx.d ./eeprom/45dbxx.o ./eeprom/45dbxx.su ./eeprom/eeprom.cyclo ./eeprom/eeprom.d ./eeprom/eeprom.o ./eeprom/eeprom.su

.PHONY: clean-eeprom

