/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
extern TIM_HandleTypeDef htim7;
extern SPI_HandleTypeDef hspi2;
extern SPI_HandleTypeDef hspi3;
/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LED3_Pin GPIO_PIN_2
#define LED3_GPIO_Port GPIOE
#define LED4_Pin GPIO_PIN_3
#define LED4_GPIO_Port GPIOE
#define CKP_Pin GPIO_PIN_4
#define CKP_GPIO_Port GPIOE
#define CMP_Pin GPIO_PIN_5
#define CMP_GPIO_Port GPIOE
#define SIGNAL_CMP_ECU_Pin GPIO_PIN_6
#define SIGNAL_CMP_ECU_GPIO_Port GPIOE
#define CS1_Pin GPIO_PIN_4
#define CS1_GPIO_Port GPIOC
#define TP_CS_Pin GPIO_PIN_2
#define TP_CS_GPIO_Port GPIOB
#define FLASH_CS_Pin GPIO_PIN_12
#define FLASH_CS_GPIO_Port GPIOB
#define TP_INT_Pin GPIO_PIN_13
#define TP_INT_GPIO_Port GPIOD
#define CS2_Pin GPIO_PIN_8
#define CS2_GPIO_Port GPIOB
#define CS3_Pin GPIO_PIN_9
#define CS3_GPIO_Port GPIOB
#define LED1_Pin GPIO_PIN_0
#define LED1_GPIO_Port GPIOE
#define LED2_Pin GPIO_PIN_1
#define LED2_GPIO_Port GPIOE

/* USER CODE BEGIN Private defines */
#define CKP_TIMER htim7
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
