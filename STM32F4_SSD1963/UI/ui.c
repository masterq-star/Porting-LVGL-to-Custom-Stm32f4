// This file was generated by SquareLine Studio
// SquareLine Studio version: SquareLine Studio 1.3.0
// LVGL version: 8.3.6
// Project name: pxdl

#include "ui.h"
#include "ui_helpers.h"

///////////////////// VARIABLES ////////////////////

// SCREEN: ui_Screen1
void ui_Screen1_screen_init(void);
lv_obj_t * ui_Screen1;
void ui_event_ButtonWelcome(lv_event_t * e);
lv_obj_t * ui_ButtonWelcome;
lv_obj_t * ui_lableButton;
lv_obj_t * ui_Label1;

// SCREEN: ui_Screen2
void ui_Screen2_screen_init(void);
lv_obj_t * ui_Screen2;
lv_obj_t * ui_Panel6;
void ui_event_SliderRPMControl(lv_event_t * e);
lv_obj_t * ui_SliderRPMControl;
lv_obj_t * ui_lablethrottle;
lv_obj_t * ui_IGPANNEL2;
lv_obj_t * ui_IGNITION2;
lv_obj_t * ui_RPM;
lv_obj_t * ui_Lablevalueprm;
lv_obj_t * ui_TIME2;
lv_obj_t * ui_Throttle;
lv_obj_t * ui_LableTHRPosition;
lv_obj_t * ui_Panel2;
lv_obj_t * ui_IGPANNEL1;
lv_obj_t * ui_IGNITION1;
lv_obj_t * ui_lableMapIat;
lv_obj_t * ui_LableAngle1;
lv_obj_t * ui_LableOxy;
lv_obj_t * ui_Label2;
lv_obj_t * ui_LableAngle2;
lv_obj_t * ui_Panel1;
lv_obj_t * ui_IGPANNEL3;
lv_obj_t * ui_IGNITION3;
lv_obj_t * ui_LableWaterTemp;
lv_obj_t * ui_LableAngle5;
lv_obj_t * ui_TIME3;
lv_obj_t * ui_LableKnk;
lv_obj_t * ui_LableAngle6;
lv_obj_t * ui_Panel3;
void ui_event_ButtonWelcome1(lv_event_t * e);
lv_obj_t * ui_ButtonWelcome1;
lv_obj_t * ui_lableButton1;
lv_obj_t * ui_IGPANNEL4;
lv_obj_t * ui_IGNITION4;
lv_obj_t * ui_LableIg;
lv_obj_t * ui_LableAngle7;
lv_obj_t * ui_TIME4;
lv_obj_t * ui_lablinj;
lv_obj_t * ui_LableAngle8;
lv_obj_t * ui_Panel4;
lv_obj_t * ui_IGNITION5;
lv_obj_t * ui_RPM2;
lv_obj_t * ui_LableAngle9;
lv_obj_t * ui_TIME5;
lv_obj_t * ui_Throttle2;
lv_obj_t * ui_LableAngle10;
lv_obj_t * ui____initial_actions0;
const lv_img_dsc_t * ui_imgset_audio_wave_[1] = {&ui_img_audio_wave_1_png};

///////////////////// TEST LVGL SETTINGS ////////////////////
#if LV_COLOR_DEPTH != 16
    #error "LV_COLOR_DEPTH should be 16bit to match SquareLine Studio's settings"
#endif
#if LV_COLOR_16_SWAP !=0
    #error "LV_COLOR_16_SWAP should be 0 to match SquareLine Studio's settings"
#endif

///////////////////// ANIMATIONS ////////////////////

///////////////////// FUNCTIONS ////////////////////
void ui_event_ButtonWelcome(lv_event_t * e)
{
    lv_event_code_t event_code = lv_event_get_code(e);
    lv_obj_t * target = lv_event_get_target(e);
    if(event_code == LV_EVENT_CLICKED) {
        _ui_screen_change(ui_Screen2, LV_SCR_LOAD_ANIM_FADE_ON, 100, 0);
    }
}
void ui_event_SliderRPMControl(lv_event_t * e)
{
    lv_event_code_t event_code = lv_event_get_code(e);
    lv_obj_t * target = lv_event_get_target(e);
    if(event_code == LV_EVENT_VALUE_CHANGED) {
        _ui_slider_set_text_value(ui_LableTHRPosition, target, "", "°");
        ChangeRPM(e);
    }
}
void ui_event_ButtonWelcome1(lv_event_t * e)
{
    lv_event_code_t event_code = lv_event_get_code(e);
    lv_obj_t * target = lv_event_get_target(e);
    if(event_code == LV_EVENT_CLICKED) {
        _ui_screen_change(ui_Screen2, LV_SCR_LOAD_ANIM_FADE_ON, 100, 0);
    }
}

///////////////////// SCREENS ////////////////////

void ui_init(void)
{
    lv_disp_t * dispp = lv_disp_get_default();
    lv_theme_t * theme = lv_theme_default_init(dispp, lv_palette_main(LV_PALETTE_BLUE), lv_palette_main(LV_PALETTE_RED),
                                               false, LV_FONT_DEFAULT);
    lv_disp_set_theme(dispp, theme);
    ui_Screen1_screen_init();
    ui_Screen2_screen_init();
    ui____initial_actions0 = lv_obj_create(NULL);
    lv_disp_load_scr(ui_Screen1);
}
