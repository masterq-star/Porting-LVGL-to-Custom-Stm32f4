################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../touch/GUI_Touch_Calibrate.c \
../touch/lvgl_touchscreen_cal.c \
../touch/xpt2046.c 

OBJS += \
./touch/GUI_Touch_Calibrate.o \
./touch/lvgl_touchscreen_cal.o \
./touch/xpt2046.o 

C_DEPS += \
./touch/GUI_Touch_Calibrate.d \
./touch/lvgl_touchscreen_cal.d \
./touch/xpt2046.d 


# Each subdirectory must supply rules for building sources it contributes
touch/%.o touch/%.su touch/%.cyclo: ../touch/%.c touch/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-touch

clean-touch:
	-$(RM) ./touch/GUI_Touch_Calibrate.cyclo ./touch/GUI_Touch_Calibrate.d ./touch/GUI_Touch_Calibrate.o ./touch/GUI_Touch_Calibrate.su ./touch/lvgl_touchscreen_cal.cyclo ./touch/lvgl_touchscreen_cal.d ./touch/lvgl_touchscreen_cal.o ./touch/lvgl_touchscreen_cal.su ./touch/xpt2046.cyclo ./touch/xpt2046.d ./touch/xpt2046.o ./touch/xpt2046.su

.PHONY: clean-touch

