################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_alpha16.c \
../lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_argb.c \
../lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_chroma_keyed.c \
../lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_indexed16.c \
../lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_rgb.c \
../lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.c \
../lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.c \
../lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.c 

OBJS += \
./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_alpha16.o \
./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_argb.o \
./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_chroma_keyed.o \
./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_indexed16.o \
./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_rgb.o \
./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.o \
./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.o \
./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.o 

C_DEPS += \
./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_alpha16.d \
./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_argb.d \
./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_chroma_keyed.d \
./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_indexed16.d \
./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_rgb.d \
./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.d \
./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.d \
./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.d 


# Each subdirectory must supply rules for building sources it contributes
lv_demos/src/lv_demo_benchmark/assets/%.o lv_demos/src/lv_demo_benchmark/assets/%.su lv_demos/src/lv_demo_benchmark/assets/%.cyclo: ../lv_demos/src/lv_demo_benchmark/assets/%.c lv_demos/src/lv_demo_benchmark/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lv_demos-2f-src-2f-lv_demo_benchmark-2f-assets

clean-lv_demos-2f-src-2f-lv_demo_benchmark-2f-assets:
	-$(RM) ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_alpha16.cyclo ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_alpha16.d ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_alpha16.o ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_alpha16.su ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_argb.cyclo ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_argb.d ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_argb.o ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_argb.su ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_chroma_keyed.cyclo ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_chroma_keyed.d ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_chroma_keyed.o ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_chroma_keyed.su ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_indexed16.cyclo ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_indexed16.d ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_indexed16.o ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_indexed16.su ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_rgb.cyclo ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_rgb.d ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_rgb.o ./lv_demos/src/lv_demo_benchmark/assets/img_benchmark_cogwheel_rgb.su ./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.cyclo ./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.d ./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.o ./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_12_compr_az.c.su ./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.cyclo ./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.d ./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.o ./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_16_compr_az.c.su ./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.cyclo ./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.d ./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.o ./lv_demos/src/lv_demo_benchmark/assets/lv_font_bechmark_montserrat_28_compr_az.c.su

.PHONY: clean-lv_demos-2f-src-2f-lv_demo_benchmark-2f-assets

