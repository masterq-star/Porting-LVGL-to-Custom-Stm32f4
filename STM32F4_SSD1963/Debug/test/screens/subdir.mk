################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../test/screens/ui_Screen1.c 

OBJS += \
./test/screens/ui_Screen1.o 

C_DEPS += \
./test/screens/ui_Screen1.d 


# Each subdirectory must supply rules for building sources it contributes
test/screens/%.o test/screens/%.su test/screens/%.cyclo: ../test/screens/%.c test/screens/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-test-2f-screens

clean-test-2f-screens:
	-$(RM) ./test/screens/ui_Screen1.cyclo ./test/screens/ui_Screen1.d ./test/screens/ui_Screen1.o ./test/screens/ui_Screen1.su

.PHONY: clean-test-2f-screens

