################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Ui_Design/fonts/ui_font_H1.c \
../Ui_Design/fonts/ui_font_Subtitle.c \
../Ui_Design/fonts/ui_font_Title.c 

OBJS += \
./Ui_Design/fonts/ui_font_H1.o \
./Ui_Design/fonts/ui_font_Subtitle.o \
./Ui_Design/fonts/ui_font_Title.o 

C_DEPS += \
./Ui_Design/fonts/ui_font_H1.d \
./Ui_Design/fonts/ui_font_Subtitle.d \
./Ui_Design/fonts/ui_font_Title.d 


# Each subdirectory must supply rules for building sources it contributes
Ui_Design/fonts/%.o Ui_Design/fonts/%.su Ui_Design/fonts/%.cyclo: ../Ui_Design/fonts/%.c Ui_Design/fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Ui_Design-2f-fonts

clean-Ui_Design-2f-fonts:
	-$(RM) ./Ui_Design/fonts/ui_font_H1.cyclo ./Ui_Design/fonts/ui_font_H1.d ./Ui_Design/fonts/ui_font_H1.o ./Ui_Design/fonts/ui_font_H1.su ./Ui_Design/fonts/ui_font_Subtitle.cyclo ./Ui_Design/fonts/ui_font_Subtitle.d ./Ui_Design/fonts/ui_font_Subtitle.o ./Ui_Design/fonts/ui_font_Subtitle.su ./Ui_Design/fonts/ui_font_Title.cyclo ./Ui_Design/fonts/ui_font_Title.d ./Ui_Design/fonts/ui_font_Title.o ./Ui_Design/fonts/ui_font_Title.su

.PHONY: clean-Ui_Design-2f-fonts

