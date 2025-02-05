################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lv_demos/src/lv_demo_music/lv_demo_music.c \
../lv_demos/src/lv_demo_music/lv_demo_music_list.c \
../lv_demos/src/lv_demo_music/lv_demo_music_main.c 

OBJS += \
./lv_demos/src/lv_demo_music/lv_demo_music.o \
./lv_demos/src/lv_demo_music/lv_demo_music_list.o \
./lv_demos/src/lv_demo_music/lv_demo_music_main.o 

C_DEPS += \
./lv_demos/src/lv_demo_music/lv_demo_music.d \
./lv_demos/src/lv_demo_music/lv_demo_music_list.d \
./lv_demos/src/lv_demo_music/lv_demo_music_main.d 


# Each subdirectory must supply rules for building sources it contributes
lv_demos/src/lv_demo_music/%.o lv_demos/src/lv_demo_music/%.su lv_demos/src/lv_demo_music/%.cyclo: ../lv_demos/src/lv_demo_music/%.c lv_demos/src/lv_demo_music/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lv_demos-2f-src-2f-lv_demo_music

clean-lv_demos-2f-src-2f-lv_demo_music:
	-$(RM) ./lv_demos/src/lv_demo_music/lv_demo_music.cyclo ./lv_demos/src/lv_demo_music/lv_demo_music.d ./lv_demos/src/lv_demo_music/lv_demo_music.o ./lv_demos/src/lv_demo_music/lv_demo_music.su ./lv_demos/src/lv_demo_music/lv_demo_music_list.cyclo ./lv_demos/src/lv_demo_music/lv_demo_music_list.d ./lv_demos/src/lv_demo_music/lv_demo_music_list.o ./lv_demos/src/lv_demo_music/lv_demo_music_list.su ./lv_demos/src/lv_demo_music/lv_demo_music_main.cyclo ./lv_demos/src/lv_demo_music/lv_demo_music_main.d ./lv_demos/src/lv_demo_music/lv_demo_music_main.o ./lv_demos/src/lv_demo_music/lv_demo_music_main.su

.PHONY: clean-lv_demos-2f-src-2f-lv_demo_music

