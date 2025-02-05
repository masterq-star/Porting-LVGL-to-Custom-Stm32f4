################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SPI_Device_res/Mcp4xxx.c 

OBJS += \
./SPI_Device_res/Mcp4xxx.o 

C_DEPS += \
./SPI_Device_res/Mcp4xxx.d 


# Each subdirectory must supply rules for building sources it contributes
SPI_Device_res/%.o SPI_Device_res/%.su SPI_Device_res/%.cyclo: ../SPI_Device_res/%.c SPI_Device_res/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-SPI_Device_res

clean-SPI_Device_res:
	-$(RM) ./SPI_Device_res/Mcp4xxx.cyclo ./SPI_Device_res/Mcp4xxx.d ./SPI_Device_res/Mcp4xxx.o ./SPI_Device_res/Mcp4xxx.su

.PHONY: clean-SPI_Device_res

