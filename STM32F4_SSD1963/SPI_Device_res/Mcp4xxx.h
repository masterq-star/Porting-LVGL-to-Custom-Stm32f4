#ifndef __MCP_4XXX_
#define __MCP_4XXX_
#include "main.h"
extern SPI_HandleTypeDef hspi3;

#define KOHMS_MCP41010 10
#define KOHMS_MCP41050 50
#define KOHMS_MCP41100 100
#define KOHMS_MCP42010 10
#define KOHMS_MCP42050 50
#define KOHMS_MCP42100 100

enum MCP_POTENTIOMETER {
	METER_0,
	METER_1,
	METER_BOTH
};
void MCP41_setWiper(  uint8_t value, uint8_t potentiometer , uint8_t Number_chip);
int convertRange(int originalValue ,int originalMin ,int originalMax , int newMin , int newMax  );
void CHANGE_TPS_REGISTER(uint8_t TPS);


#endif
