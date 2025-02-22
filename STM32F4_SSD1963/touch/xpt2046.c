/****************************************Copyright (c)****************************************************
**                                      
**                        http://www.powermcu.com & http://www.hotmcu.com
**
**--------------File Info---------------------------------------------------------------------------------
** File name:               xpt2046.c
** Descriptions:            resistive touch screen, compatible ads7843
**
**--------------------------------------------------------------------------------------------------------
** Created by:              AVRman
** Created date:            2010-11-7
** Version:                 v1.0
** Descriptions:            The original version
**
**--------------------------------------------------------------------------------------------------------
** Modified by:             AVRman
** Modified date:           2015-7-2
** Version:                 V1.1
** Descriptions:            add english description
**
*********************************************************************************************************/

/* Includes ------------------------------------------------------------------*/
//#include "GLCD.h"
#include "xpt2046.h"

extern unsigned int GlobalX;
extern unsigned int GlobalY;
/* Private define ------------------------------------------------------------*/
#define THRESHOLD 2   /* The bigger of the value, the lower the sensitivity */

/**
 * @brief	XPT2046 SPI initialization
 * @param	None
 * @retval None
 */  
void xpt2046_init(void)
{ 

}

/**
 * @brief	delay function
 * @param	cnt: Delay value
 * @retval None
 */
static void delay_nus(int cnt)
{
	int i,us;
	for(i = 0;i<cnt;i++)
	{
		us = 40;
		while (us--)     /* delay	*/
		{
		}
	}
}


extern SPI_HandleTypeDef hspi2;
/**
 * @brief	SPI bus transmit and receive data
 * @param	cmd: send value
 * @retval return receive data 
 */  
static unsigned char WR_CMD (unsigned char cmd)  
{ 
	unsigned char DataRX = 0; 
	HAL_SPI_TransmitReceive(&hspi2,&cmd,&DataRX,1,1000);
	return DataRX;
} 

/**
 * @brief	read xpt2046 adc value
 * @param	None
 * @retval return adc value 
 */  
static int RD_AD(void)  
{ 
	unsigned short buf,temp; 

	temp = WR_CMD(0x00);
	buf = temp << 8; 
	delay_nus(1); 
	temp = WR_CMD(0x00);;
	buf |= temp; 
	buf >>= 3; 
	buf &= 0xfff; 
	return buf;
}

/**
 * @brief	read xpt2046 channel X+ adc value
 * @param	None
 * @retval return channel X+ adc value
 */  
int Read_X(void)  
{  
	unsigned short temp;
	TP_CS(0); 
	delay_nus(1); 
	WR_CMD(CHX); 
	delay_nus(1); 
	temp = RD_AD(); 
	TP_CS(1); 
	return temp;    
} 

/**
 * @brief	read xpt2046 channel Y+ adc value
 * @param	None
 * @retval return channel Y+ adc value
 */  
int Read_Y(void)  
{  
	unsigned short temp;
	TP_CS(0);
	delay_nus(1);
	WR_CMD(CHY);
	delay_nus(1);
	temp = RD_AD();
	TP_CS(1); 
	return temp;
} 

/**
 * @brief	read xpt2046 channel X+ channel Y+ adc value
 * @param	None
 * @retval return channel X+ channel Y+ adc value
 */  
void TP_GetAdXY(int *x,int *y)  
{ 
	int adx,ady; 
	adx = Read_X(); 
	delay_nus(1); 
	ady = Read_Y(); 
	*x = adx; 
	*y = ady; 
}



/**
 * @brief	get xpt2046 channel X+ channel Y+ adc filtering value, some interference values can be excluded
 * @param	None
 * @retval return channel X+ channel Y+ adc filtered value
 */
Coordinate *Read_Value(void)
{
	static Coordinate screen;
	int m0,m1,m2,TP_X[1],TP_Y[1],temp[3];
	unsigned char count=0;
	int buffer[2][9]={{0},{0}};  /* channel X+ Y+ for sampling buffer */
	do                           /* 9 sampling times */
	{		   
		TP_GetAdXY(TP_X,TP_Y);  
		//CalcTouchValue();
		buffer[0][count]=TP_X[0];  
		buffer[1][count]=TP_Y[0];
		count++;  
	}
	while(!TP_INT_IN && count<9);  /* TP_INT_IN interrupt pin for the touch screen, when the user clicks on the touch screen��
	                                 TP_INT_IN Low level */

	if(count==9)   /* sampled 9 times, then filtering some interference values can be excluded*/
	{  
		/* average value of the 3 groups */
		temp[0]=(buffer[0][0]+buffer[0][1]+buffer[0][2])/3;
		temp[1]=(buffer[0][3]+buffer[0][4]+buffer[0][5])/3;
		temp[2]=(buffer[0][6]+buffer[0][7]+buffer[0][8])/3;
		/* D-value between the 3 groups */
		m0=temp[0]-temp[1];
		m1=temp[1]-temp[2];
		m2=temp[2]-temp[0];
		/* absolute value of D-value */
		m0=m0>0?m0:(-m0);
		m1=m1>0?m1:(-m1);
		m2=m2>0?m2:(-m2);

		/* judging Whether the absolute value of D-value is more than threshold, if three absolute value of D-value is 
		   more than threshold value, then determine the sampling point for the interference, ignore the sampling point, 
		   the threshold value is setting to 2, in this example */
		if( m0>THRESHOLD  &&  m1>THRESHOLD  &&  m2>THRESHOLD ) return 0;
		/* calculate channel X+ average values,then assign them to screen */
		if(m0<m1)
		{
			if(m2<m0) 
			screen.x=(temp[0]+temp[2])/2;
			else 
			screen.x=(temp[0]+temp[1])/2;	
		}
		else if(m2<m1) 
			screen.x=(temp[0]+temp[2])/2;
		else 
			screen.x=(temp[1]+temp[2])/2;

		/* same as above, this is channel Y+ */
		temp[0]=(buffer[1][0]+buffer[1][1]+buffer[1][2])/3;
		temp[1]=(buffer[1][3]+buffer[1][4]+buffer[1][5])/3;
		temp[2]=(buffer[1][6]+buffer[1][7]+buffer[1][8])/3;
		m0=temp[0]-temp[1];
		m1=temp[1]-temp[2];
		m2=temp[2]-temp[0];
		m0=m0>0?m0:(-m0);
		m1=m1>0?m1:(-m1);
		m2=m2>0?m2:(-m2);
		if(m0>THRESHOLD&&m1>THRESHOLD&&m2>THRESHOLD) return 0;

		if(m0<m1)
		{
			if(m2<m0) 
				screen.y=(temp[0]+temp[2])/2;
			else 
				screen.y=(temp[0]+temp[1])/2;	
		}
		else if(m2<m1) 
			screen.y=(temp[0]+temp[2])/2;
		else
			screen.y=(temp[1]+temp[2])/2;

		return &screen;
	}  
	return 0; 
}
//uint16_t x1,y1;
 void xpt2046_read(lv_indev_drv_t * indev_drv, lv_indev_data_t * data){
	Coordinate *c ;
	c = Read_Value();
//	data->point.x = data->point.x ++;
//	data->point.y = data->point.x ++;
//	data->state = LV_INDEV_STATE_PR;
//	return false;
	    static int16_t last_x = 0;
		static int16_t last_y = 0;
		static int16_t count = 0;
		static uint8_t check_touch=0;
		int TPX,TPY;
			int CX,CY;

		//BSP_TS_GetState(&TS_State);
//			for(int i = 0 ;i <5 ; i ++)
//			{
//				if(TP_INT_IN)check_touch =1;
//
//
//			}
		//if( c != (void*)0 ) {
			if(!TP_INT_IN) {
			//if(check_touch ==0) {
			TP_GetAdXY(&TPX,&TPY);
			CX = calibrate_X(TPX,TPY);
			CY = calibrate_Y(TPX,TPY);

			data->point.x =CX;
			data->point.y = CY;

			last_x = data->point.x;
			last_y = data->point.y;
			data->state = LV_INDEV_STATE_PR;
		}
			else {
			data->point.x = last_x;
			data->point.y = last_y;
			data->state = LV_INDEV_STATE_REL;
		}

}
/************************ (C) COPYRIGHT HAOYU Electronics *****END OF FILE****/
