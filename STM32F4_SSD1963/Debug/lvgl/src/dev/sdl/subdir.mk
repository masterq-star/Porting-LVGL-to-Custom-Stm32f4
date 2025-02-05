################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/dev/sdl/lv_sdl_keyboard.c \
../lvgl/src/dev/sdl/lv_sdl_mouse.c \
../lvgl/src/dev/sdl/lv_sdl_mousewheel.c \
../lvgl/src/dev/sdl/lv_sdl_window.c 

OBJS += \
./lvgl/src/dev/sdl/lv_sdl_keyboard.o \
./lvgl/src/dev/sdl/lv_sdl_mouse.o \
./lvgl/src/dev/sdl/lv_sdl_mousewheel.o \
./lvgl/src/dev/sdl/lv_sdl_window.o 

C_DEPS += \
./lvgl/src/dev/sdl/lv_sdl_keyboard.d \
./lvgl/src/dev/sdl/lv_sdl_mouse.d \
./lvgl/src/dev/sdl/lv_sdl_mousewheel.d \
./lvgl/src/dev/sdl/lv_sdl_window.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/dev/sdl/%.o lvgl/src/dev/sdl/%.su lvgl/src/dev/sdl/%.cyclo: ../lvgl/src/dev/sdl/%.c lvgl/src/dev/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-dev-2f-sdl

clean-lvgl-2f-src-2f-dev-2f-sdl:
	-$(RM) ./lvgl/src/dev/sdl/lv_sdl_keyboard.cyclo ./lvgl/src/dev/sdl/lv_sdl_keyboard.d ./lvgl/src/dev/sdl/lv_sdl_keyboard.o ./lvgl/src/dev/sdl/lv_sdl_keyboard.su ./lvgl/src/dev/sdl/lv_sdl_mouse.cyclo ./lvgl/src/dev/sdl/lv_sdl_mouse.d ./lvgl/src/dev/sdl/lv_sdl_mouse.o ./lvgl/src/dev/sdl/lv_sdl_mouse.su ./lvgl/src/dev/sdl/lv_sdl_mousewheel.cyclo ./lvgl/src/dev/sdl/lv_sdl_mousewheel.d ./lvgl/src/dev/sdl/lv_sdl_mousewheel.o ./lvgl/src/dev/sdl/lv_sdl_mousewheel.su ./lvgl/src/dev/sdl/lv_sdl_window.cyclo ./lvgl/src/dev/sdl/lv_sdl_window.d ./lvgl/src/dev/sdl/lv_sdl_window.o ./lvgl/src/dev/sdl/lv_sdl_window.su

.PHONY: clean-lvgl-2f-src-2f-dev-2f-sdl

