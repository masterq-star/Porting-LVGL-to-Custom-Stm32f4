################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/examples/widgets/tileview/lv_example_tileview_1.c 

OBJS += \
./lvgl/examples/widgets/tileview/lv_example_tileview_1.o 

C_DEPS += \
./lvgl/examples/widgets/tileview/lv_example_tileview_1.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/examples/widgets/tileview/%.o lvgl/examples/widgets/tileview/%.su lvgl/examples/widgets/tileview/%.cyclo: ../lvgl/examples/widgets/tileview/%.c lvgl/examples/widgets/tileview/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-examples-2f-widgets-2f-tileview

clean-lvgl-2f-examples-2f-widgets-2f-tileview:
	-$(RM) ./lvgl/examples/widgets/tileview/lv_example_tileview_1.cyclo ./lvgl/examples/widgets/tileview/lv_example_tileview_1.d ./lvgl/examples/widgets/tileview/lv_example_tileview_1.o ./lvgl/examples/widgets/tileview/lv_example_tileview_1.su

.PHONY: clean-lvgl-2f-examples-2f-widgets-2f-tileview

