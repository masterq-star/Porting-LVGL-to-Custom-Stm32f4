################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../UI/ui.c \
../UI/ui_events.c \
../UI/ui_helpers.c 

OBJS += \
./UI/ui.o \
./UI/ui_events.o \
./UI/ui_helpers.o 

C_DEPS += \
./UI/ui.d \
./UI/ui_events.d \
./UI/ui_helpers.d 


# Each subdirectory must supply rules for building sources it contributes
UI/%.o UI/%.su UI/%.cyclo: ../UI/%.c UI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-UI

clean-UI:
	-$(RM) ./UI/ui.cyclo ./UI/ui.d ./UI/ui.o ./UI/ui.su ./UI/ui_events.cyclo ./UI/ui_events.d ./UI/ui_events.o ./UI/ui_events.su ./UI/ui_helpers.cyclo ./UI/ui_helpers.d ./UI/ui_helpers.o ./UI/ui_helpers.su

.PHONY: clean-UI

