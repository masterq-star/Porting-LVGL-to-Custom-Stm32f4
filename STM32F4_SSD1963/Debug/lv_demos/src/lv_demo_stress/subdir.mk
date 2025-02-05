################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lv_demos/src/lv_demo_stress/lv_demo_stress.c 

OBJS += \
./lv_demos/src/lv_demo_stress/lv_demo_stress.o 

C_DEPS += \
./lv_demos/src/lv_demo_stress/lv_demo_stress.d 


# Each subdirectory must supply rules for building sources it contributes
lv_demos/src/lv_demo_stress/%.o lv_demos/src/lv_demo_stress/%.su lv_demos/src/lv_demo_stress/%.cyclo: ../lv_demos/src/lv_demo_stress/%.c lv_demos/src/lv_demo_stress/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lv_demos-2f-src-2f-lv_demo_stress

clean-lv_demos-2f-src-2f-lv_demo_stress:
	-$(RM) ./lv_demos/src/lv_demo_stress/lv_demo_stress.cyclo ./lv_demos/src/lv_demo_stress/lv_demo_stress.d ./lv_demos/src/lv_demo_stress/lv_demo_stress.o ./lv_demos/src/lv_demo_stress/lv_demo_stress.su

.PHONY: clean-lv_demos-2f-src-2f-lv_demo_stress

