################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../UI/images/ui_img_audio_wave_1_png.c \
../UI/images/ui_img_pot_ver_knob_png.c \
../UI/images/ui_img_pot_ver_line_png.c 

OBJS += \
./UI/images/ui_img_audio_wave_1_png.o \
./UI/images/ui_img_pot_ver_knob_png.o \
./UI/images/ui_img_pot_ver_line_png.o 

C_DEPS += \
./UI/images/ui_img_audio_wave_1_png.d \
./UI/images/ui_img_pot_ver_knob_png.d \
./UI/images/ui_img_pot_ver_line_png.d 


# Each subdirectory must supply rules for building sources it contributes
UI/images/%.o UI/images/%.su UI/images/%.cyclo: ../UI/images/%.c UI/images/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-UI-2f-images

clean-UI-2f-images:
	-$(RM) ./UI/images/ui_img_audio_wave_1_png.cyclo ./UI/images/ui_img_audio_wave_1_png.d ./UI/images/ui_img_audio_wave_1_png.o ./UI/images/ui_img_audio_wave_1_png.su ./UI/images/ui_img_pot_ver_knob_png.cyclo ./UI/images/ui_img_pot_ver_knob_png.d ./UI/images/ui_img_pot_ver_knob_png.o ./UI/images/ui_img_pot_ver_knob_png.su ./UI/images/ui_img_pot_ver_line_png.cyclo ./UI/images/ui_img_pot_ver_line_png.d ./UI/images/ui_img_pot_ver_line_png.o ./UI/images/ui_img_pot_ver_line_png.su

.PHONY: clean-UI-2f-images

