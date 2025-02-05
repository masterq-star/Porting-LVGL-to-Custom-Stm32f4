#include "Mcp4xxx.h"


void MCP41_setWiper(  uint8_t value, uint8_t potentiometer , uint8_t Number_chip)
{
	uint8_t data[2];
	if (potentiometer == METER_0) {
		data[0] = 0x11; // Command executed on Potentiometer 0.
	} else if (potentiometer == METER_1) {
		data[0] = 0x12; // Command executed on Potentiometer 1.
	} else if (potentiometer == METER_BOTH) {
		data[0] = 0x13; // Command executed on both Potentiometers.
	}
	data[1] = value;

//		HAL_GPIO_WritePin(CS1_GPIO_Port, CS1_Pin, GPIO_PIN_RESET);


//	HAL_SPI_Transmit(&hspi3, data[0], 1, 10);
//	HAL_SPI_Transmit(&hspi3, data[1], 1, 10);



//    HAL_GPIO_WritePin(CS1_GPIO_Port, CS1_Pin, GPIO_PIN_SET);
	if(Number_chip == 1 ){
		HAL_GPIO_WritePin(CS1_GPIO_Port, CS1_Pin, GPIO_PIN_RESET);
				    // HAL_Delay(1);
				    HAL_SPI_Transmit(&hspi3, data, 2, 100);
				   // HAL_Delay(1);
				     HAL_GPIO_WritePin(CS1_GPIO_Port, CS1_Pin, GPIO_PIN_SET);

	}
	if(Number_chip == 2 ){
			HAL_GPIO_WritePin(CS2_GPIO_Port, CS2_Pin, GPIO_PIN_RESET);
					    // HAL_Delay(1);
					    HAL_SPI_Transmit(&hspi3, data, 2, 100);
					   // HAL_Delay(1);
					     HAL_GPIO_WritePin(CS2_GPIO_Port, CS2_Pin, GPIO_PIN_SET);

		}
	if(Number_chip == 3 ){
			HAL_GPIO_WritePin(CS3_GPIO_Port, CS3_Pin, GPIO_PIN_RESET);
					    // HAL_Delay(1);
					    HAL_SPI_Transmit(&hspi3, data, 2, 100);
					   // HAL_Delay(1);
					     HAL_GPIO_WritePin(CS3_GPIO_Port, CS3_Pin, GPIO_PIN_SET);

		}


}
int convertRange(int originalValue ,int originalMin ,int originalMax , int newMin , int newMax  ) {
    // Perform the conversion
    int convertedValue = ((originalValue - originalMin) * (newMax - newMin) / (originalMax - originalMin)) + newMin;

    return convertedValue;
}
void CHANGE_TPS_REGISTER(uint8_t TPS){
	uint8_t data_res = convertRange(TPS, 0, 90, 10, 255);

	MCP41_setWiper(100,METER_1,1);


}
