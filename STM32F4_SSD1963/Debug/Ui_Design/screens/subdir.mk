################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Ui_Design/screens/ui_final.c \
../Ui_Design/screens/ui_main_menu.c \
../Ui_Design/screens/ui_printing.c \
../Ui_Design/screens/ui_settings.c \
../Ui_Design/screens/ui_step1.c \
../Ui_Design/screens/ui_step2.c \
../Ui_Design/screens/ui_step3.c \
../Ui_Design/screens/ui_welcome.c 

OBJS += \
./Ui_Design/screens/ui_final.o \
./Ui_Design/screens/ui_main_menu.o \
./Ui_Design/screens/ui_printing.o \
./Ui_Design/screens/ui_settings.o \
./Ui_Design/screens/ui_step1.o \
./Ui_Design/screens/ui_step2.o \
./Ui_Design/screens/ui_step3.o \
./Ui_Design/screens/ui_welcome.o 

C_DEPS += \
./Ui_Design/screens/ui_final.d \
./Ui_Design/screens/ui_main_menu.d \
./Ui_Design/screens/ui_printing.d \
./Ui_Design/screens/ui_settings.d \
./Ui_Design/screens/ui_step1.d \
./Ui_Design/screens/ui_step2.d \
./Ui_Design/screens/ui_step3.d \
./Ui_Design/screens/ui_welcome.d 


# Each subdirectory must supply rules for building sources it contributes
Ui_Design/screens/%.o Ui_Design/screens/%.su Ui_Design/screens/%.cyclo: ../Ui_Design/screens/%.c Ui_Design/screens/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Ui_Design-2f-screens

clean-Ui_Design-2f-screens:
	-$(RM) ./Ui_Design/screens/ui_final.cyclo ./Ui_Design/screens/ui_final.d ./Ui_Design/screens/ui_final.o ./Ui_Design/screens/ui_final.su ./Ui_Design/screens/ui_main_menu.cyclo ./Ui_Design/screens/ui_main_menu.d ./Ui_Design/screens/ui_main_menu.o ./Ui_Design/screens/ui_main_menu.su ./Ui_Design/screens/ui_printing.cyclo ./Ui_Design/screens/ui_printing.d ./Ui_Design/screens/ui_printing.o ./Ui_Design/screens/ui_printing.su ./Ui_Design/screens/ui_settings.cyclo ./Ui_Design/screens/ui_settings.d ./Ui_Design/screens/ui_settings.o ./Ui_Design/screens/ui_settings.su ./Ui_Design/screens/ui_step1.cyclo ./Ui_Design/screens/ui_step1.d ./Ui_Design/screens/ui_step1.o ./Ui_Design/screens/ui_step1.su ./Ui_Design/screens/ui_step2.cyclo ./Ui_Design/screens/ui_step2.d ./Ui_Design/screens/ui_step2.o ./Ui_Design/screens/ui_step2.su ./Ui_Design/screens/ui_step3.cyclo ./Ui_Design/screens/ui_step3.d ./Ui_Design/screens/ui_step3.o ./Ui_Design/screens/ui_step3.su ./Ui_Design/screens/ui_welcome.cyclo ./Ui_Design/screens/ui_welcome.d ./Ui_Design/screens/ui_welcome.o ./Ui_Design/screens/ui_welcome.su

.PHONY: clean-Ui_Design-2f-screens

