################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/tests/src/lv_test_indev.c \
../lvgl/tests/src/lv_test_init.c \
../lvgl/tests/src/lv_test_malloc.c 

OBJS += \
./lvgl/tests/src/lv_test_indev.o \
./lvgl/tests/src/lv_test_init.o \
./lvgl/tests/src/lv_test_malloc.o 

C_DEPS += \
./lvgl/tests/src/lv_test_indev.d \
./lvgl/tests/src/lv_test_init.d \
./lvgl/tests/src/lv_test_malloc.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/tests/src/%.o lvgl/tests/src/%.su lvgl/tests/src/%.cyclo: ../lvgl/tests/src/%.c lvgl/tests/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-tests-2f-src

clean-lvgl-2f-tests-2f-src:
	-$(RM) ./lvgl/tests/src/lv_test_indev.cyclo ./lvgl/tests/src/lv_test_indev.d ./lvgl/tests/src/lv_test_indev.o ./lvgl/tests/src/lv_test_indev.su ./lvgl/tests/src/lv_test_init.cyclo ./lvgl/tests/src/lv_test_init.d ./lvgl/tests/src/lv_test_init.o ./lvgl/tests/src/lv_test_init.su ./lvgl/tests/src/lv_test_malloc.cyclo ./lvgl/tests/src/lv_test_malloc.d ./lvgl/tests/src/lv_test_malloc.o ./lvgl/tests/src/lv_test_malloc.su

.PHONY: clean-lvgl-2f-tests-2f-src

