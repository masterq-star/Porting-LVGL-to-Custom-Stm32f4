################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../UI/screens/ui_Screen1.c \
../UI/screens/ui_Screen2.c 

OBJS += \
./UI/screens/ui_Screen1.o \
./UI/screens/ui_Screen2.o 

C_DEPS += \
./UI/screens/ui_Screen1.d \
./UI/screens/ui_Screen2.d 


# Each subdirectory must supply rules for building sources it contributes
UI/screens/%.o UI/screens/%.su UI/screens/%.cyclo: ../UI/screens/%.c UI/screens/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-UI-2f-screens

clean-UI-2f-screens:
	-$(RM) ./UI/screens/ui_Screen1.cyclo ./UI/screens/ui_Screen1.d ./UI/screens/ui_Screen1.o ./UI/screens/ui_Screen1.su ./UI/screens/ui_Screen2.cyclo ./UI/screens/ui_Screen2.d ./UI/screens/ui_Screen2.o ./UI/screens/ui_Screen2.su

.PHONY: clean-UI-2f-screens

