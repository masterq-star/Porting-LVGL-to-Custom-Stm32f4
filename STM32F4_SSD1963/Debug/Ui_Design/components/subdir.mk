################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Ui_Design/components/ui_comp.c \
../Ui_Design/components/ui_comp_bar_group.c \
../Ui_Design/components/ui_comp_button.c \
../Ui_Design/components/ui_comp_button_menu.c \
../Ui_Design/components/ui_comp_button_print.c \
../Ui_Design/components/ui_comp_dot.c \
../Ui_Design/components/ui_comp_hook.c \
../Ui_Design/components/ui_comp_list.c \
../Ui_Design/components/ui_comp_text_bg_group.c 

OBJS += \
./Ui_Design/components/ui_comp.o \
./Ui_Design/components/ui_comp_bar_group.o \
./Ui_Design/components/ui_comp_button.o \
./Ui_Design/components/ui_comp_button_menu.o \
./Ui_Design/components/ui_comp_button_print.o \
./Ui_Design/components/ui_comp_dot.o \
./Ui_Design/components/ui_comp_hook.o \
./Ui_Design/components/ui_comp_list.o \
./Ui_Design/components/ui_comp_text_bg_group.o 

C_DEPS += \
./Ui_Design/components/ui_comp.d \
./Ui_Design/components/ui_comp_bar_group.d \
./Ui_Design/components/ui_comp_button.d \
./Ui_Design/components/ui_comp_button_menu.d \
./Ui_Design/components/ui_comp_button_print.d \
./Ui_Design/components/ui_comp_dot.d \
./Ui_Design/components/ui_comp_hook.d \
./Ui_Design/components/ui_comp_list.d \
./Ui_Design/components/ui_comp_text_bg_group.d 


# Each subdirectory must supply rules for building sources it contributes
Ui_Design/components/%.o Ui_Design/components/%.su Ui_Design/components/%.cyclo: ../Ui_Design/components/%.c Ui_Design/components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Ui_Design-2f-components

clean-Ui_Design-2f-components:
	-$(RM) ./Ui_Design/components/ui_comp.cyclo ./Ui_Design/components/ui_comp.d ./Ui_Design/components/ui_comp.o ./Ui_Design/components/ui_comp.su ./Ui_Design/components/ui_comp_bar_group.cyclo ./Ui_Design/components/ui_comp_bar_group.d ./Ui_Design/components/ui_comp_bar_group.o ./Ui_Design/components/ui_comp_bar_group.su ./Ui_Design/components/ui_comp_button.cyclo ./Ui_Design/components/ui_comp_button.d ./Ui_Design/components/ui_comp_button.o ./Ui_Design/components/ui_comp_button.su ./Ui_Design/components/ui_comp_button_menu.cyclo ./Ui_Design/components/ui_comp_button_menu.d ./Ui_Design/components/ui_comp_button_menu.o ./Ui_Design/components/ui_comp_button_menu.su ./Ui_Design/components/ui_comp_button_print.cyclo ./Ui_Design/components/ui_comp_button_print.d ./Ui_Design/components/ui_comp_button_print.o ./Ui_Design/components/ui_comp_button_print.su ./Ui_Design/components/ui_comp_dot.cyclo ./Ui_Design/components/ui_comp_dot.d ./Ui_Design/components/ui_comp_dot.o ./Ui_Design/components/ui_comp_dot.su ./Ui_Design/components/ui_comp_hook.cyclo ./Ui_Design/components/ui_comp_hook.d ./Ui_Design/components/ui_comp_hook.o ./Ui_Design/components/ui_comp_hook.su ./Ui_Design/components/ui_comp_list.cyclo ./Ui_Design/components/ui_comp_list.d ./Ui_Design/components/ui_comp_list.o ./Ui_Design/components/ui_comp_list.su ./Ui_Design/components/ui_comp_text_bg_group.cyclo ./Ui_Design/components/ui_comp_text_bg_group.d ./Ui_Design/components/ui_comp_text_bg_group.o ./Ui_Design/components/ui_comp_text_bg_group.su

.PHONY: clean-Ui_Design-2f-components

