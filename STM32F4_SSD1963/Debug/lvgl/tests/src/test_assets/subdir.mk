################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/tests/src/test_assets/font_1.c \
../lvgl/tests/src/test_assets/font_2.c \
../lvgl/tests/src/test_assets/font_3.c \
../lvgl/tests/src/test_assets/test_animimg001.c \
../lvgl/tests/src/test_assets/test_animimg002.c \
../lvgl/tests/src/test_assets/test_animimg003.c \
../lvgl/tests/src/test_assets/test_img_caret_down.c \
../lvgl/tests/src/test_assets/ubuntu_font.c 

OBJS += \
./lvgl/tests/src/test_assets/font_1.o \
./lvgl/tests/src/test_assets/font_2.o \
./lvgl/tests/src/test_assets/font_3.o \
./lvgl/tests/src/test_assets/test_animimg001.o \
./lvgl/tests/src/test_assets/test_animimg002.o \
./lvgl/tests/src/test_assets/test_animimg003.o \
./lvgl/tests/src/test_assets/test_img_caret_down.o \
./lvgl/tests/src/test_assets/ubuntu_font.o 

C_DEPS += \
./lvgl/tests/src/test_assets/font_1.d \
./lvgl/tests/src/test_assets/font_2.d \
./lvgl/tests/src/test_assets/font_3.d \
./lvgl/tests/src/test_assets/test_animimg001.d \
./lvgl/tests/src/test_assets/test_animimg002.d \
./lvgl/tests/src/test_assets/test_animimg003.d \
./lvgl/tests/src/test_assets/test_img_caret_down.d \
./lvgl/tests/src/test_assets/ubuntu_font.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/tests/src/test_assets/%.o lvgl/tests/src/test_assets/%.su lvgl/tests/src/test_assets/%.cyclo: ../lvgl/tests/src/test_assets/%.c lvgl/tests/src/test_assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-tests-2f-src-2f-test_assets

clean-lvgl-2f-tests-2f-src-2f-test_assets:
	-$(RM) ./lvgl/tests/src/test_assets/font_1.cyclo ./lvgl/tests/src/test_assets/font_1.d ./lvgl/tests/src/test_assets/font_1.o ./lvgl/tests/src/test_assets/font_1.su ./lvgl/tests/src/test_assets/font_2.cyclo ./lvgl/tests/src/test_assets/font_2.d ./lvgl/tests/src/test_assets/font_2.o ./lvgl/tests/src/test_assets/font_2.su ./lvgl/tests/src/test_assets/font_3.cyclo ./lvgl/tests/src/test_assets/font_3.d ./lvgl/tests/src/test_assets/font_3.o ./lvgl/tests/src/test_assets/font_3.su ./lvgl/tests/src/test_assets/test_animimg001.cyclo ./lvgl/tests/src/test_assets/test_animimg001.d ./lvgl/tests/src/test_assets/test_animimg001.o ./lvgl/tests/src/test_assets/test_animimg001.su ./lvgl/tests/src/test_assets/test_animimg002.cyclo ./lvgl/tests/src/test_assets/test_animimg002.d ./lvgl/tests/src/test_assets/test_animimg002.o ./lvgl/tests/src/test_assets/test_animimg002.su ./lvgl/tests/src/test_assets/test_animimg003.cyclo ./lvgl/tests/src/test_assets/test_animimg003.d ./lvgl/tests/src/test_assets/test_animimg003.o ./lvgl/tests/src/test_assets/test_animimg003.su ./lvgl/tests/src/test_assets/test_img_caret_down.cyclo ./lvgl/tests/src/test_assets/test_img_caret_down.d ./lvgl/tests/src/test_assets/test_img_caret_down.o ./lvgl/tests/src/test_assets/test_img_caret_down.su ./lvgl/tests/src/test_assets/ubuntu_font.cyclo ./lvgl/tests/src/test_assets/ubuntu_font.d ./lvgl/tests/src/test_assets/ubuntu_font.o ./lvgl/tests/src/test_assets/ubuntu_font.su

.PHONY: clean-lvgl-2f-tests-2f-src-2f-test_assets

