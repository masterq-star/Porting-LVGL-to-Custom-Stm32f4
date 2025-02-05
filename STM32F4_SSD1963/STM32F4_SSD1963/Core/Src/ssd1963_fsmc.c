#include "ssd1963_fsmc.h"
unsigned int  HDP=799; //Horizontal Display Period
unsigned int  HT=1000; //Horizontal Total
unsigned int  HPS=51;  //LLINE Pulse Start Position
unsigned int  LPS=3;   //	Horizontal Display Period Start Position
unsigned char HPW=8;   //	LLINE Pulse Width


unsigned int  VDP=479;	//Vertical Display Period
unsigned int  VT=530;	//Vertical Total
unsigned int  VPS=24;	//	LFRAME Pulse Start Position
unsigned int  FPS=23;	//Vertical Display Period Start Positio
unsigned char   VPW=3;	// LFRAME Pulse Width
void swap(uint16_t a, uint16_t b)
{
	uint16_t temp = 0x0000;

    temp = b;
    b = a;
    a = temp;
}


inline uint16_t RGB(uint8_t r, uint8_t g, uint8_t b)
{
	return ((r & 0xF8) << 8) | ((g & 0xFC) << 3) | (b >> 3);
}

inline static uint16_t H24_RGB565(uint8_t reverse, uint32_t color24)
{
	uint8_t b = (color24 >> 16) & 0xFF;
	uint8_t g = (color24 >> 8) & 0xFF;
	uint8_t r = color24 & 0xFF;
	if (reverse) return ((b / 8) << 11) | ((g / 4) << 5) | (r / 8);
	else return ((r / 8) << 11) | ((g / 4) << 5) | (b / 8);
}




void Command_Write(uint16_t cmd,uint16_t data)
{
	CMD = cmd;
	DAT = data;
}

//inline static void LCD_Send_Reg(uint16_t cmd, uint16_t dat)
//{
//	CMD = cmd;
//	DAT = dat;
//}

//inline static uint16_t LCD_Read_Data()
//{
//	uint16_t data = DAT;
//	return data;
//}

//inline static uint16_t LCD_Read_Reg(uint16_t reg_addr)
//{
//	volatile uint16_t data = 0;
//	LCD_Send_Cmd(reg_addr);
//	data = LCD_Read_Data();
//	return data;
//}

inline static void LCD_Window(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2)
{
//	LCD_Send_Cmd(LCD_COLUMN_ADDR);
//	LCD_Send_Dat(y1 >> 8);
//	LCD_Send_Dat(y1 & 0x00FF);
//	LCD_Send_Dat(y2 >> 8);
//	LCD_Send_Dat(y2 & 0x00FF);
//	LCD_Send_Cmd(LCD_PAGE_ADDR);
//	LCD_Send_Dat(x1 >> 8);
//	LCD_Send_Dat(x1 & 0x00FF);
//	LCD_Send_Dat(x2 >> 8);
//	LCD_Send_Dat(x2 & 0x00FF);
//	LCD_Send_Cmd(LCD_GRAM);

//	swap(x1, y1);
//	swap(x2, y2);
	LCD_Send_Cmd(0x2a);
	LCD_Send_Dat(x1>>8);
	LCD_Send_Dat(x1);
	LCD_Send_Dat(x2>>8);
	LCD_Send_Dat(x2);
  	LCD_Send_Cmd(0x2b);
  	LCD_Send_Dat(y1>>8);
  	LCD_Send_Dat(y1);
  	LCD_Send_Dat(y2>>8);
  	LCD_Send_Dat(y2);
  	LCD_Send_Cmd(0x2c);

}

void LCD_Pixel(uint16_t x, uint16_t y, uint32_t color24)
{
	LCD_Window(x, y, x, y);
	LCD_Send_Dat(H24_RGB565(1, color24));
}

void LCD_Rect_Fill(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint32_t color24)
{
	uint32_t i = 0;
	LCD_Window(x, y, x + w - 1, y + h - 1);
	for (i = 0; i < w * h; i++) LCD_Send_Dat(H24_RGB565(0, color24));
}
void LCD_Rect_flush(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint32_t *color24)
{
	uint32_t i = 0,j = 0, index = 0;
	//LCD_Window(x1,x2,y1,y2);

	for (i = y1; i < y2; i++) {
			for (j = x1; j <x2 ; j ++){
				LCD_Pixel(j,i,color24[index]);
				index++;
			}
	}
}

void LCD_Line(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint8_t size, uint32_t color24)
{
	int deltaX = abs(x2 - x1);
	int deltaY = abs(y2 - y1);
	int signX = x1 < x2 ? 1 : -1;
	int signY = y1 < y2 ? 1 : -1;
	int error = deltaX - deltaY;
	int error2 = 0;
	for (;;)
	{
		LCD_Rect_Fill(x1, y1, size, size, color24);
		if (x1 == x2 && y1 == y2)
		break;
		error2 = error * 2;
		if (error2 > -deltaY)
		{
			error -= deltaY;
			x1 += signX;
		}
		if (error2 < deltaX)
		{
			error += deltaX;
			y1 += signY;
		}
	}
}

void LCD_Triangle(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint16_t x3, uint16_t y3, uint8_t size, uint32_t color24)
{
	LCD_Line(x1, y1, x2, y2, size, color24);
	LCD_Line(x2, y2, x3, y3, size, color24);
	LCD_Line(x3, y3, x1, y1, size, color24);
}

void LCD_Rect(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint8_t size, uint32_t color24)
{
	LCD_Line(x, y, x + w, y, size, color24);
	LCD_Line(x, y + h, x + w, y + h, size, color24);
	LCD_Line(x, y, x, y + h, size, color24);
	LCD_Line(x + w, y, x + w, y + h, size, color24);
}

void LCD_Ellipse(int16_t x0, int16_t y0, int16_t rx, int16_t ry, uint8_t fill, uint8_t size, uint32_t color24)
{
	int16_t x, y;
	int32_t rx2 = rx * rx;
	int32_t ry2 = ry * ry;
	int32_t fx2 = 4 * rx2;
	int32_t fy2 = 4 * ry2;
	int32_t s;
	if (fill)
	{
		for (x = 0, y = ry, s = 2 * ry2 + rx2 * (1 - 2 * ry); ry2 * x <= rx2 * y; x++)
		{
			LCD_Line(x0 - x, y0 - y, x0 + x + 1 - size, y0 - y, size, color24);
			LCD_Line(x0 - x, y0 + y, x0 + x + 1 - size, y0 + y, size, color24);
			if (s >= 0)
			{
				s += fx2 * (1 - y);
				y--;
			}
			s += ry2 * ((4 * x) + 6);
		}
		for (x = rx, y = 0, s = 2 * rx2 + ry2 * (1-2 * rx); rx2 * y <= ry2 * x; y++)
		{
			LCD_Line(x0 - x, y0 - y, x0 + x + 1 - size, y0 - y, size, color24);
			LCD_Line(x0 - x, y0 + y, x0 + x + 1 - size, y0 + y, size, color24);
			if (s >= 0)
			{
				s += fy2 * (1 - x);
				x--;
			}
			s += rx2 * ((4 * y) + 6);
		}
	}
	else
	{
		for (x = 0, y = ry, s = 2 * ry2 + rx2 * (1 - 2 * ry); ry2 * x <= rx2 * y; x++)
		{
			LCD_Rect_Fill(x0 + x, y0 + y, size, size, color24);
			LCD_Rect_Fill(x0 - x, y0 + y, size, size, color24);
			LCD_Rect_Fill(x0 + x, y0 - y, size, size, color24);
			LCD_Rect_Fill(x0 - x, y0 - y, size, size, color24);
			if (s >= 0)
			{
				s += fx2 * (1 - y);
				y--;
			}
			s += ry2 * ((4 * x) + 6);
		}
		for (x = rx, y = 0, s = 2 * rx2 + ry2 * (1 - 2 * rx); rx2 * y <= ry2 * x; y++)
		{
			LCD_Rect_Fill(x0 + x, y0 + y, size, size, color24);
			LCD_Rect_Fill(x0 - x, y0 + y, size, size, color24);
			LCD_Rect_Fill(x0 + x, y0 - y, size, size, color24);
			LCD_Rect_Fill(x0 - x, y0 - y, size, size, color24);
			if (s >= 0)
			{
				s += fy2 * (1 - x);
				x--;
			}
			s += rx2 * ((4 * y) + 6);
		}
	}
}

void LCD_Circle(uint16_t x, uint16_t y, uint8_t radius, uint8_t fill, uint8_t size, uint32_t color24)
{
	int a_, b_, P;
	a_ = 0;
	b_ = radius;
	P = 1 - radius;
	while (a_ <= b_)
	{
		if (fill == 1)
		{
			LCD_Rect_Fill(x - a_, y - b_, 2 * a_ + 1, 2 * b_ + 1, color24);
			LCD_Rect_Fill(x - b_, y - a_, 2 * b_ + 1, 2 * a_ + 1, color24);
		}
		else
		{
			LCD_Rect_Fill(a_ + x, b_ + y, size, size, color24);
			LCD_Rect_Fill(b_ + x, a_ + y, size, size, color24);
			LCD_Rect_Fill(x - a_, b_ + y, size, size, color24);
			LCD_Rect_Fill(x - b_, a_ + y, size, size, color24);
			LCD_Rect_Fill(b_ + x, y - a_, size, size, color24);
			LCD_Rect_Fill(a_ + x, y - b_, size, size, color24);
			LCD_Rect_Fill(x - a_, y - b_, size, size, color24);
			LCD_Rect_Fill(x - b_, y - a_, size, size, color24);
		}
		if (P < 0)
		{
			P = (P + 3) + (2 * a_);
			a_++;
		}
		else
		{
			P = (P + 5) + (2 * (a_ - b_));
			a_++;
			b_--;
		}
	}
}

void LCD_Circle_Helper(int16_t x0, int16_t y0, int16_t r, uint8_t cornername, uint8_t size, uint32_t color24)
{
	int16_t f = 1 - r;
	int16_t ddF_x = 1;
	int16_t ddF_y = -2 * r;
	int16_t x = 0;
	int16_t y = r;

	while (x < y) {
		if (f >= 0) {
			y--;
			ddF_y += 2;
			f += ddF_y;
		}
		x++;
		ddF_x += 2;
		f += ddF_x;
		if (cornername & 0x4) {
			LCD_Rect_Fill(x0 + x, y0 + y, size, size, color24);
			LCD_Rect_Fill(x0 + y, y0 + x, size, size, color24);
		}
		if (cornername & 0x2) {
			LCD_Rect_Fill(x0 + x, y0 - y, size, size, color24);
			LCD_Rect_Fill(x0 + y, y0 - x, size, size, color24);
		}
		if (cornername & 0x8) {
			LCD_Rect_Fill(x0 - y, y0 + x, size, size, color24);
			LCD_Rect_Fill(x0 - x, y0 + y, size, size, color24);
		}
		if (cornername & 0x1) {
			LCD_Rect_Fill(x0 - y, y0 - x, size, size, color24);
			LCD_Rect_Fill(x0 - x, y0 - y, size, size, color24);
		}
	}
}

void LCD_Rect_Round(uint16_t x, uint16_t y, uint16_t length, uint16_t width, uint16_t r, uint8_t size, uint32_t color24)
{
	LCD_Line(x + r, y, x + length + size - r, y, size, color24);
	LCD_Line(x + r, y + width - 1, x + length + size - r, y + width - 1, size, color24);
	LCD_Line(x, y + r, x, y + width - size - r, size, color24);
	LCD_Line(x + length - 1, y + r, x + length - 1, y + width - size - r, size, color24);

	LCD_Circle_Helper(x + r, y + r, r, 1, size, color24);
	LCD_Circle_Helper(x + length - r - 1, y + r, r, 2, size, color24);
	LCD_Circle_Helper(x + length - r - 1, y + width - r - 1, r, 4, size, color24);
	LCD_Circle_Helper(x + r, y + width - r - 1, r, 8, size, color24);
}

void LCD_Circle_Fill_Helper(int16_t x0, int16_t y0, int16_t r, uint8_t cornername, int16_t delta, uint32_t color24)
{
	int16_t f = 1 - r;
	int16_t ddF_x = 1;
	int16_t ddF_y = -2 * r;
	int16_t x = 0;
	int16_t y = r;

	while (x < y) {
		if (f >= 0) {
			y--;
			ddF_y += 2;
			f += ddF_y;
		}
		x++;
		ddF_x += 2;
		f += ddF_x;

		if (cornername & 0x1) {
			LCD_Line(x0 + x, y0 - y, x0 + x, y0 - y + 2 * y + delta, 1, color24);
			LCD_Line(x0 + y, y0 - x, x0 + y, y0 - x + 2 * x + delta, 1, color24);
		}
		if (cornername & 0x2) {
			LCD_Line(x0 - x, y0 - y, x0 - x, y0 - y + 2 * y + delta, 1, color24);
			LCD_Line(x0 - y, y0 - x, x0 - y, y0 - x + 2 * x + delta, 1, color24);
		}
	}
}

void LCD_Rect_Round_Fill(uint16_t x, uint16_t y, uint16_t length, uint16_t width, uint16_t r, uint32_t color24)
{
	LCD_Rect_Fill(x + r, y, length - 2 * r, width, color24);
	LCD_Circle_Fill_Helper(x + length - r - 1, y + r, r, 1, width - 2 * r - 1, color24);
	LCD_Circle_Fill_Helper(x + r, y + r, r, 2, width - 2 * r - 1, color24);
}

static void LCD_Char(int16_t x, int16_t y, const GFXglyph *glyph, const GFXfont *font, uint8_t size, uint32_t color24)
{
	uint8_t  *bitmap = font -> bitmap;
	uint16_t bo = glyph -> bitmapOffset;
	uint8_t bits = 0, bit = 0;
	uint16_t set_pixels = 0;
	uint8_t  cur_x, cur_y;
	for(cur_y = 0; cur_y < glyph -> height; cur_y++)
	{
		for(cur_x = 0; cur_x < glyph -> width; cur_x++)
		{
			if(bit == 0)
			{
				bits = (*(const unsigned char *)(&bitmap[bo++]));
				bit  = 0x80;
			}
			if(bits & bit)
			{
				set_pixels++;
			}
			else if (set_pixels > 0)
			{
				LCD_Rect_Fill(x + (glyph -> xOffset + cur_x - set_pixels) * size, y + (glyph -> yOffset + cur_y) * size, size * set_pixels, size, color24);
				set_pixels = 0;
			}
			bit >>= 1;
		}
		if (set_pixels > 0)
		{
			LCD_Rect_Fill(x + (glyph -> xOffset + cur_x-set_pixels) * size, y + (glyph -> yOffset + cur_y) * size, size * set_pixels, size, color24);
			set_pixels = 0;
		}
	}
}

void LCD_Font(uint16_t x, uint16_t y, char *text, const GFXfont *p_font, uint8_t size, uint32_t color24)
{
	int16_t cursor_x = x;
	int16_t cursor_y = y;
	GFXfont font;
	memcpy((&font), (p_font), (sizeof(GFXfont)));
	for(uint16_t text_pos = 0; text_pos < strlen(text); text_pos++)
	{
		char c = text[text_pos];
		if(c == '\n')
		{
			cursor_x = x;
			cursor_y += font.yAdvance * size;
		}
		else if(c >= font.first && c <= font.last && c != '\r')
		{
			GFXglyph glyph;
			memcpy((&glyph), (&font.glyph[c - font.first]), (sizeof(GFXglyph)));
			LCD_Char(cursor_x, cursor_y, &glyph, &font, size, color24);
			cursor_x += glyph.xAdvance * size;
		}
	}
}
void LCD_clear(void)
{
    unsigned int l=800,w;

	LCD_Send_Cmd(0x002A);	
	LCD_Send_Dat(0);	    
	LCD_Send_Dat(0);
	LCD_Send_Dat(HDP>>8);	    
	LCD_Send_Dat(HDP&0x00ff);
  LCD_Send_Cmd(0x002b);	
	LCD_Send_Dat(0);	    
	LCD_Send_Dat(0);
	LCD_Send_Dat(VDP>>8);	    
	LCD_Send_Dat(VDP&0x00ff);
	LCD_Send_Cmd(0x002c);
	
	
	while(l--)
	{
	    for(w=0;w<480;w++)
		{    
          	LCD_Send_Dat(0xf800);
		}
	}
}
void LCD_Init(void)
{
	 LCD_Send_Cmd(0x00E2);	
	LCD_Send_Dat(0x0023);
	// Set PLL with OSC = 10MHz (hardware)
    // Multiplier N = 35, VCO (>250MHz)= OSC*(N+1), VCO = 360MHz	   
	LCD_Send_Dat(0x0002);
	// Divider M = 2, PLL = 360/(M+1) = 120MHz
	LCD_Send_Dat(0x0004);
	// Validate M and N values

	LCD_Send_Cmd(0x00E0);  // PLL enable
	LCD_Send_Dat(0x0001);
	HAL_Delay(1);
	LCD_Send_Cmd(0x00E0);
	LCD_Send_Dat(0x0003);
	HAL_Delay(5);
	LCD_Send_Cmd(0x0001);  // software reset
	HAL_Delay(5);
	LCD_Send_Cmd(0x00E6);	//PLL setting for PCLK, depends on resolution
	
	
	//Set LSHIFT freq, i.e. the DCLK with PLL freq 120MHz set previously
	//Typical DCLK for AT070TN92 is 34MHz
	//34MHz = 120MHz*(LCDC_FPR+1)/2^20
	//LCDC_FPR = 300000 (0x0493E0)
	
	LCD_Send_Dat(0x0004);
	LCD_Send_Dat(0x0093);
	LCD_Send_Dat(0x00e0);

	LCD_Send_Cmd(0x00B0);	//LCD SPECIFICATION
	LCD_Send_Dat(0x0000);
	LCD_Send_Dat(0x0000);
	LCD_Send_Dat((HDP>>8)&0X00FF);  //Set HDP
	LCD_Send_Dat(HDP&0X00FF);
  LCD_Send_Dat((VDP>>8)&0X00FF);  //Set VDP
	LCD_Send_Dat(VDP&0X00FF);
  LCD_Send_Dat(0x0000);

	LCD_Send_Cmd(0x00B4);	//HSYNC
	LCD_Send_Dat((HT>>8)&0X00FF);  //Set HT
	LCD_Send_Dat(HT&0X00FF);
	LCD_Send_Dat((HPS>>8)&0X00FF);  //Set HPS
	LCD_Send_Dat(HPS&0X00FF);
	LCD_Send_Dat(HPW);			   //Set HPW
	LCD_Send_Dat((LPS>>8)&0X00FF);  //Set HPS
	LCD_Send_Dat(LPS&0X00FF);
	LCD_Send_Dat(0x0000);

	LCD_Send_Cmd(0x00B6);	//VSYNC
	LCD_Send_Dat((VT>>8)&0X00FF);   //Set VT
	LCD_Send_Dat(VT&0X00FF);
	LCD_Send_Dat((VPS>>8)&0X00FF);  //Set VPS
	LCD_Send_Dat(VPS&0X00FF);
	LCD_Send_Dat(VPW);			   //Set VPW
	LCD_Send_Dat((FPS>>8)&0X00FF);  //Set FPS
	LCD_Send_Dat(FPS&0X00FF);

	LCD_Send_Cmd(0x00BA);
	LCD_Send_Dat(0x0005);//0x000F);    //GPIO[3:0] out 1

	LCD_Send_Cmd(0x00B8);
	LCD_Send_Dat(0x0007);    //GPIO3=input, GPIO[2:0]=output
	LCD_Send_Dat(0x0001);    //GPIO0 normal

	LCD_Send_Cmd(0x0036); //rotation
	LCD_Send_Dat(0x0000);
//	LCD_Send_Dat(0x0060);


	LCD_Send_Cmd(0x00F0); //pixel data interface
	LCD_Send_Dat(0x0003);


	HAL_Delay(5);

	LCD_clear();
	LCD_Send_Cmd(0x0029); //display on

	LCD_Send_Cmd(0x00BE); //set PWM for B/L
	LCD_Send_Dat(0x0006);
	//LCD_Send_Dat(0x0008);
	LCD_Send_Dat(0x0080);
	//LCD_Send_Dat(0x00f0);
	
	LCD_Send_Dat(0x0001);
	LCD_Send_Dat(0x00f0);
	LCD_Send_Dat(0x0000);
	LCD_Send_Dat(0x0000);

	LCD_Send_Cmd(0x00d0);//   ö ̬            
	LCD_Send_Dat(0x000d);

}
void ssd1963_flush(lv_disp_drv_t * disp_drv, const lv_area_t * area, lv_color_t * color_p)
{

    /*Return if the area is out the screen*/
    if(area->x2 < 0) return;
    if(area->y2 < 0) return;
    if(area->x1 > SSD1963_HOR_RES - 1) return;
    if(area->y1 > SSD1963_VER_RES - 1) return;

    /*Truncate the area to the screen*/
    int32_t act_x1 = area->x1 < 0 ? 0 : area->x1;
    int32_t act_y1 = area->y1 < 0 ? 0 : area->y1;
    int32_t act_x2 = area->x2 > SSD1963_HOR_RES - 1 ? SSD1963_HOR_RES - 1 : area->x2;
    int32_t act_y2 = area->y2 > SSD1963_VER_RES - 1 ? SSD1963_VER_RES - 1 : area->y2;
    uint16_t c;

    LCD_Window(area->x1, area->y1,area->x2, area->y2 ); // set the working window
    for (int y = area->y1; y <= area->y2; y++) {
      for (int x = area->x1; x <= area->x2; x++) {
    	  uint16_t swap;
    	  swap = color_p->full & 0x07E0;				// green
    	  			swap |= (color_p->full >> 11) & 0x1F;		// red
    	  			swap |= (color_p->full & 0x1F) << 11;		// blue

        c = swap;
        LCD_Send_Dat(c);
        color_p++;
      }
    }

    lv_disp_flush_ready(disp_drv);
}

void LCD_Bright(uint8_t bright)
{
	LCD_Send_Cmd(0xBE);  // PWM configuration
	LCD_Send_Dat(0x08);     // set PWM signal frequency to 170Hz when PLL frequency is 100MHz
	LCD_Send_Dat(bright);   // PWM duty cycle
	LCD_Send_Dat(0x01);
}
