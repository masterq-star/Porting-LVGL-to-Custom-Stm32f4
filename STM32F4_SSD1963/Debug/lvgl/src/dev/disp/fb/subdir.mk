################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/dev/disp/fb/lv_linux_fbdev.c 

OBJS += \
./lvgl/src/dev/disp/fb/lv_linux_fbdev.o 

C_DEPS += \
./lvgl/src/dev/disp/fb/lv_linux_fbdev.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/dev/disp/fb/%.o lvgl/src/dev/disp/fb/%.su lvgl/src/dev/disp/fb/%.cyclo: ../lvgl/src/dev/disp/fb/%.c lvgl/src/dev/disp/fb/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-dev-2f-disp-2f-fb

clean-lvgl-2f-src-2f-dev-2f-disp-2f-fb:
	-$(RM) ./lvgl/src/dev/disp/fb/lv_linux_fbdev.cyclo ./lvgl/src/dev/disp/fb/lv_linux_fbdev.d ./lvgl/src/dev/disp/fb/lv_linux_fbdev.o ./lvgl/src/dev/disp/fb/lv_linux_fbdev.su

.PHONY: clean-lvgl-2f-src-2f-dev-2f-disp-2f-fb

