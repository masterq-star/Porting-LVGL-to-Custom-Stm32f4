################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/examples/libs/barcode/lv_example_barcode_1.c 

OBJS += \
./lvgl/examples/libs/barcode/lv_example_barcode_1.o 

C_DEPS += \
./lvgl/examples/libs/barcode/lv_example_barcode_1.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/examples/libs/barcode/%.o lvgl/examples/libs/barcode/%.su lvgl/examples/libs/barcode/%.cyclo: ../lvgl/examples/libs/barcode/%.c lvgl/examples/libs/barcode/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-examples-2f-libs-2f-barcode

clean-lvgl-2f-examples-2f-libs-2f-barcode:
	-$(RM) ./lvgl/examples/libs/barcode/lv_example_barcode_1.cyclo ./lvgl/examples/libs/barcode/lv_example_barcode_1.d ./lvgl/examples/libs/barcode/lv_example_barcode_1.o ./lvgl/examples/libs/barcode/lv_example_barcode_1.su

.PHONY: clean-lvgl-2f-examples-2f-libs-2f-barcode

