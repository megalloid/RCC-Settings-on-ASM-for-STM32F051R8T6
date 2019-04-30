;*******************************************************************************
;				Объявление основных шин и базовых адресов 
;*******************************************************************************

PERIPH_BASE           		EQU     (0x40000000)
APBPERIPH_BASE      		EQU     (PERIPH_BASE)
AHBPERIPH_BASE        		EQU     (PERIPH_BASE + 0x00020000)
AHB2PERIPH_BASE				EQU     (PERIPH_BASE + 0x08000000)
ADC_BASE           			EQU     (APBPERIPH_BASE + 0x00012708)
ADC1_BASE           		EQU     (APBPERIPH_BASE + 0x00012400)
CEC_BASE              		EQU     (APBPERIPH_BASE + 0x00007800)
COMP_BASE             		EQU     (APBPERIPH_BASE + 0x0001001C)
CRC_BASE              		EQU     (AHBPERIPH_BASE + 0x00003000)	
DAC_BASE              		EQU     (APBPERIPH_BASE + 0x00007400)
DBGMCU_BASE           		EQU     (APBPERIPH_BASE + 0x00015800)
DMA1_BASE             		EQU     (AHBPERIPH_BASE + 0x00000000)	
DMA1_Channel1_BASE    		EQU     (DMA1_BASE + 0x00000008)
DMA1_Channel2_BASE    		EQU     (DMA1_BASE + 0x0000001C)
DMA1_Channel3_BASE    		EQU     (DMA1_BASE + 0x00000030)
DMA1_Channel4_BASE    		EQU     (DMA1_BASE + 0x00000044)
DMA1_Channel5_BASE    		EQU     (DMA1_BASE + 0x00000058)
EXTI_BASE             		EQU     (APBPERIPH_BASE + 0x00010400)
FLASH_R_BASE          		EQU     (AHBPERIPH_BASE + 0x00002000) 			; FLASH registers base address */	
OB_BASE               		EQU     (0x1FFFF800)       						; FLASH Option Bytes base address */
FLASHSIZE_BASE        		EQU     (0x1FFFF7CC)       						; FLASH Size register base address */
GPIOA_BASE            		EQU     (AHB2PERIPH_BASE + 0x00000000)
GPIOB_BASE            		EQU     (AHB2PERIPH_BASE + 0x00000400)
GPIOC_BASE            		EQU     (AHB2PERIPH_BASE + 0x00000800)
GPIOD_BASE            		EQU     (AHB2PERIPH_BASE + 0x00000C00)
GPIOF_BASE            		EQU     (AHB2PERIPH_BASE + 0x00001400)
I2C1_BASE             		EQU     (APBPERIPH_BASE + 0x00005400)
I2C2_BASE             		EQU     (APBPERIPH_BASE + 0x00005800)	
IWDG_BASE             		EQU     (APBPERIPH_BASE + 0x00003000)
PWR_BASE              		EQU     (APBPERIPH_BASE + 0x00007000)
RCC_BASE              		EQU     (AHBPERIPH_BASE + 0x00001000)
RTC_BASE              		EQU     (APBPERIPH_BASE + 0x00002800)
SPI1_BASE             		EQU     (APBPERIPH_BASE + 0x00013000)
SPI2_BASE             		EQU     (APBPERIPH_BASE + 0x00003800)
SYSCFG_BASE           		EQU     (APBPERIPH_BASE + 0x00010000)
TIM1_BASE             		EQU     (APBPERIPH_BASE + 0x00012C00)
TIM2_BASE             		EQU     (APBPERIPH_BASE + 0x00000000)
TIM3_BASE             		EQU     (APBPERIPH_BASE + 0x00000400)
TIM6_BASE             		EQU     (APBPERIPH_BASE + 0x00001000)
TIM14_BASE            		EQU     (APBPERIPH_BASE + 0x00002000)
TIM15_BASE            		EQU     (APBPERIPH_BASE + 0x00014000)
TIM16_BASE            		EQU     (APBPERIPH_BASE + 0x00014400)
TIM17_BASE            		EQU     (APBPERIPH_BASE + 0x00014800)
TSC_BASE              		EQU     (AHBPERIPH_BASE + 0x00004000)	
WWDG_BASE             		EQU     (APBPERIPH_BASE + 0x00002C00)
UID_BASE              		EQU     (0x1FFFF7AC)       						; Unique device ID register base address */	
USART1_BASE           		EQU     (APBPERIPH_BASE + 0x00013800)	
USART2_BASE           		EQU     (APBPERIPH_BASE + 0x00004400)	
	
	
;
;	ADC1
;
ADC1_ISR          			EQU     (ADC1_BASE + 0x00000000)			; ADC interrupt and status register */
ADC1_IER          			EQU     (ADC1_BASE + 0x00000004)			; ADC interrupt enable register */
ADC1_CR          			EQU     (ADC1_BASE + 0x00000008)			; ADC control register */
ADC1_CFGR1        			EQU     (ADC1_BASE + 0x0000000C)			; ADC configuration register 1 */
ADC1_CFGR2        			EQU     (ADC1_BASE + 0x00000010)			; ADC configuration register 2 */
ADC1_SMPR         			EQU     (ADC1_BASE + 0x00000014)			; ADC sampling time register */
ADC1_RESERVED1    			EQU     (ADC1_BASE + 0x00000018)			; Reserved */
ADC1_RESERVED2    			EQU     (ADC1_BASE + 0x0000001C)			; Reserved */
ADC1_TR           			EQU     (ADC1_BASE + 0x00000020)			; ADC analog watchdog 1 threshold register */
ADC1_RESERVED3    			EQU     (ADC1_BASE + 0x00000024)			; Reserved */
ADC1_CHSELR       			EQU     (ADC1_BASE + 0x00000028)			; ADC group regular sequencer register */
ADC1_RESERVED4_1 			EQU     (ADC1_BASE + 0x0000002C)			; Reserved */
ADC1_RESERVED4_2 			EQU     (ADC1_BASE + 0x00000030)			; Reserved */
ADC1_RESERVED4_3 			EQU     (ADC1_BASE + 0x00000034)			; Reserved */
ADC1_RESERVED4_4 			EQU     (ADC1_BASE + 0x00000038)			; Reserved */
ADC1_RESERVED4_5 			EQU     (ADC1_BASE + 0x0000003C)			; Reserved */
ADC1_DR           			EQU     (ADC1_BASE + 0x00000040)			; ADC group regular data register */
		
		
;
;	DMA1 
;												
DMA1_ISR					EQU     (DMA1_BASE + 0x00000000)			; DMA interrupt status register */
DMA1_IFCR         			EQU     (DMA1_BASE + 0x00000004)			; DMA interrupt flag clear register */
											
											
;
;	 DMA1_Channel1 
;
DMA1_Channel1_CCR			EQU     (DMA1_Channel1_BASE + 0x00000000)	; DMA channel x configuration register */
DMA1_Channel1_CNDTR 		EQU     (DMA1_Channel1_BASE + 0x00000004)   ; DMA channel x number of data register */
DMA1_Channel1_CPAR  		EQU     (DMA1_Channel1_BASE + 0x00000008)   ; DMA channel x peripheral address register */
DMA1_Channel1_CMAR  		EQU     (DMA1_Channel1_BASE + 0x0000000C)   ; DMA channel x memory address register */
												
											
;
;	DMA1_Channel2 
;
DMA1_Channel2_CCR			EQU     (DMA1_Channel2_BASE + 0x00000000)	; DMA channel x configuration register */
DMA1_Channel2_CNDTR 		EQU     (DMA1_Channel2_BASE + 0x00000004)   ; DMA channel x number of data register */
DMA1_Channel2_CPAR  		EQU     (DMA1_Channel2_BASE + 0x00000008)   ; DMA channel x peripheral address register */
DMA1_Channel2_CMAR  		EQU     (DMA1_Channel2_BASE + 0x0000000C)   ; DMA channel x memory address register */
												
												
;
;	DMA1_Channel3 
;
DMA1_Channel3_CCR			EQU     (DMA1_Channel3_BASE + 0x00000000)	; DMA channel x configuration register */
DMA1_Channel3_CNDTR 		EQU     (DMA1_Channel3_BASE + 0x00000004)   ; DMA channel x number of data register */
DMA1_Channel3_CPAR  		EQU     (DMA1_Channel3_BASE + 0x00000008)   ; DMA channel x peripheral address register */
DMA1_Channel3_CMAR 	 		EQU     (DMA1_Channel3_BASE + 0x0000000C)   ; DMA channel x memory address register */
												
												
;
;	DMA1_Channel4 
;
DMA1_Channel4_CCR			EQU     (DMA1_Channel4_BASE + 0x00000000)	; DMA channel x configuration register */
DMA1_Channel4_CNDTR 		EQU     (DMA1_Channel4_BASE + 0x00000004)   ; DMA channel x number of data register */
DMA1_Channel4_CPAR  		EQU     (DMA1_Channel4_BASE + 0x00000008)   ; DMA channel x peripheral address register */
DMA1_Channel4_CMAR  		EQU     (DMA1_Channel4_BASE + 0x0000000C)   ; DMA channel x memory address register */
												
											
;
;	DMA1_Channel5 
;
DMA1_Channel5_CCR			EQU     (DMA1_Channel5_BASE + 0x00000000)	; DMA channel x configuration register */
DMA1_Channel5_CNDTR 		EQU     (DMA1_Channel5_BASE + 0x00000004)   ; DMA channel x number of data register */
DMA1_Channel5_CPAR  		EQU     (DMA1_Channel5_BASE + 0x00000008)   ; DMA channel x peripheral address register */
DMA1_Channel5_CMAR  		EQU     (DMA1_Channel5_BASE + 0x0000000C)   ; DMA channel x memory address register */
										

; 
;	Регистр тактирования RCC
;
RCC_CR						EQU		(RCC_BASE + 0x00000000)
RCC_CR_HSEON				EQU		(0x00010000)
RCC_CR_HSERDY				EQU		(0x00020000)
RCC_CR_PLLON				EQU		(0x01000000)
RCC_CR_PLLRDY				EQU		(0x02000000)
	
RCC_CFGR					EQU		(RCC_BASE + 0x00000004)	
RCC_CFGR_SWS_PLL			EQU		(0x00000008)
RCC_CIR						EQU		(RCC_BASE + 0x00000008)	
RCC_APB2RSTR				EQU		(RCC_BASE + 0x0000000C)	
RCC_APB1RSTR				EQU		(RCC_BASE + 0x00000010)	
RCC_AHBENR					EQU		(RCC_BASE + 0x00000014)	
RCC_APB2ENR					EQU		(RCC_BASE + 0x00000018)	
RCC_APB1ENR					EQU		(RCC_BASE + 0x0000001C)		
RCC_BDCR					EQU		(RCC_BASE + 0x00000020)
RCC_CSR						EQU		(RCC_BASE + 0x00000024)	
RCC_AHBRSTR					EQU		(RCC_BASE + 0x00000028)		
RCC_CFGR2					EQU		(RCC_BASE + 0x0000002C)	
RCC_CFGR3					EQU		(RCC_BASE + 0x00000030)	
RCC_CR2						EQU		(RCC_BASE + 0x00000034)	


; 
;	I2C2
;
I2C1_CR1           			EQU		(I2C1_BASE + 0x00000000)			; I2C Control register 1 */
I2C1_CR2           			EQU		(I2C1_BASE + 0x00000004)			; I2C Control register 2 */
I2C1_OAR1      				EQU		(I2C1_BASE + 0x00000008)			; I2C Own address 1 register */
I2C1_OAR2      				EQU		(I2C1_BASE + 0x0000000C)			; I2C Own address 2 register */
I2C1_TIMINGR   				EQU		(I2C1_BASE + 0x00000010)			; I2C Timing register */
I2C1_TIMEOUTR  				EQU		(I2C1_BASE + 0x00000014)			; I2C Timeout register */
I2C1_ISR       				EQU		(I2C1_BASE + 0x00000018)			; I2C Interrupt and status register */
I2C1_ICR       				EQU		(I2C1_BASE + 0x0000001C)			; I2C Interrupt clear register */
I2C1_PECR      				EQU		(I2C1_BASE + 0x00000020)			; I2C PEC register */
I2C1_RXDR      				EQU		(I2C1_BASE + 0x00000024)			; I2C Receive data register */
I2C1_TXDR      				EQU		(I2C1_BASE + 0x00000028)			; I2C Transmit data register */
												
											
;
;	I2C2
;
I2C2_CR1           			EQU		(I2C2_BASE + 0x00000000)			; I2C Control register 1 */
I2C2_CR2           			EQU		(I2C2_BASE + 0x00000004)			; I2C Control register 2 */
I2C2_OAR1      				EQU		(I2C2_BASE + 0x00000008)			; I2C Own address 1 register */
I2C2_OAR2      				EQU		(I2C2_BASE + 0x0000000C)			; I2C Own address 2 register */
I2C2_TIMINGR   				EQU		(I2C2_BASE + 0x00000010)			; I2C Timing register */
I2C2_TIMEOUTR  				EQU		(I2C2_BASE + 0x00000014)			; I2C Timeout register */
I2C2_ISR       				EQU		(I2C2_BASE + 0x00000018)			; I2C Interrupt and status register */
I2C2_ICR       				EQU		(I2C2_BASE + 0x0000001C)			; I2C Interrupt clear register */
I2C2_PECR      				EQU		(I2C2_BASE + 0x00000020)			; I2C PEC register */
I2C2_RXDR      				EQU		(I2C2_BASE + 0x00000024)			; I2C Receive data register */
I2C2_TXDR      				EQU		(I2C2_BASE + 0x00000028)			; I2C Transmit data register */
	
	
;
;	SPI1
;
SPI1_CR1        			EQU		(SPI1_BASE + 0x00000000)						; SPI Control register 1 (not used in I2S mode) */
SPI1_CR2        			EQU		(SPI1_BASE + 0x00000004)						; SPI Control register 2 */
SPI1_SR         			EQU		(SPI1_BASE + 0x00000008)						; SPI Status register */
SPI1_DR         			EQU		(SPI1_BASE + 0x0000000C)						; SPI data register */
SPI1_CRCPR      			EQU		(SPI1_BASE + 0x00000010)						; SPI CRC polynomial register (not used in I2S mode) */
SPI1_RXCRCR     			EQU		(SPI1_BASE + 0x00000014)						; SPI Rx CRC register (not used in I2S mode) */
SPI1_TXCRCR     			EQU		(SPI1_BASE + 0x00000018)						; SPI Tx CRC register (not used in I2S mode) */
SPI1_I2SCFGR    			EQU		(SPI1_BASE + 0x0000001C)						; SPI_I2S configuration register */
SPI1_I2SPR      			EQU		(SPI1_BASE + 0x00000020)						; SPI_I2S prescaler register */
												
											
;
;	SPI2
;
SPI2_CR1        			EQU		(SPI2_BASE + 0x00000000)						; SPI Control register 1 (not used in I2S mode) */
SPI2_CR2        			EQU		(SPI2_BASE + 0x00000004)						; SPI Control register 2 */
SPI2_SR         			EQU		(SPI2_BASE + 0x00000008)						; SPI Status register */
SPI2_DR         			EQU		(SPI2_BASE + 0x0000000C)						; SPI data register */
SPI2_CRCPR      			EQU		(SPI2_BASE + 0x00000010)						; SPI CRC polynomial register (not used in I2S mode) */
SPI2_RXCRCR     			EQU		(SPI2_BASE + 0x00000014)						; SPI Rx CRC register (not used in I2S mode) */
SPI2_TXCRCR     			EQU		(SPI2_BASE + 0x00000018)						; SPI Tx CRC register (not used in I2S mode) */
SPI2_I2SCFGR    			EQU		(SPI2_BASE + 0x0000001C)						; SPI_I2S configuration register */
SPI2_I2SPR      			EQU		(SPI2_BASE + 0x00000020)						; SPI_I2S prescaler register */
					
					
;
; Регистр GPIOA	
;
GPIOA_MODER					EQU		(GPIOA_BASE	+ 0x00000000)
GPIOA_OTYPER				EQU		(GPIOA_BASE	+ 0x00000004)
GPIOA_OSPEEDR				EQU		(GPIOA_BASE	+ 0x00000008)
GPIOA_PUPDR					EQU		(GPIOA_BASE	+ 0x0000000C)	
GPIOA_IDR					EQU		(GPIOA_BASE	+ 0x00000010)
GPIOA_ODR					EQU		(GPIOA_BASE	+ 0x00000014)
GPIOA_BSRR					EQU		(GPIOA_BASE	+ 0x00000018)
GPIOA_LCKR					EQU		(GPIOA_BASE	+ 0x0000001C)
GPIOA_AFRL					EQU		(GPIOA_BASE	+ 0x00000020)
GPIOA_AFRH					EQU		(GPIOA_BASE	+ 0x00000024)
GPIOA_BRR					EQU		(GPIOA_BASE	+ 0x00000028)


;
; Регистр GPIOB	
;
GPIOB_MODER					EQU		(GPIOB_BASE	+ 0x00000000)
GPIOB_OTYPER				EQU		(GPIOB_BASE	+ 0x00000004)
GPIOB_OSPEEDR				EQU		(GPIOB_BASE	+ 0x00000008)
GPIOB_PUPDR					EQU		(GPIOB_BASE	+ 0x0000000C)	
GPIOB_IDR					EQU		(GPIOB_BASE	+ 0x00000010)
GPIOB_ODR					EQU		(GPIOB_BASE	+ 0x00000014)
GPIOB_BSRR					EQU		(GPIOB_BASE	+ 0x00000018)
GPIOB_LCKR					EQU		(GPIOB_BASE	+ 0x0000001C)
GPIOB_AFRL					EQU		(GPIOB_BASE	+ 0x00000020)
GPIOB_AFRH					EQU		(GPIOB_BASE	+ 0x00000024)
GPIOB_BRR					EQU		(GPIOB_BASE	+ 0x00000028)


;
; Регистр GPIOC	
;
GPIOC_MODER					EQU		(GPIOC_BASE	+ 0x00000000)
GPIOC_OTYPER				EQU		(GPIOC_BASE	+ 0x00000004)
GPIOC_OSPEEDR				EQU		(GPIOC_BASE	+ 0x00000008)
GPIOC_PUPDR					EQU		(GPIOC_BASE	+ 0x0000000C)	
GPIOC_IDR					EQU		(GPIOC_BASE	+ 0x00000010)
GPIOC_ODR					EQU		(GPIOC_BASE	+ 0x00000014)
GPIOC_BSRR					EQU		(GPIOC_BASE	+ 0x00000018)
GPIOC_LCKR					EQU		(GPIOC_BASE	+ 0x0000001C)
GPIOC_AFRL					EQU		(GPIOC_BASE	+ 0x00000020)
GPIOC_AFRH					EQU		(GPIOC_BASE	+ 0x00000024)
GPIOC_BRR					EQU		(GPIOC_BASE	+ 0x00000028)


;
; Регистр GPIOD	
;
GPIOD_MODER					EQU		(GPIOD_BASE	+ 0x00000000)
GPIOD_OTYPER				EQU		(GPIOD_BASE	+ 0x00000004)
GPIOD_OSPEEDR				EQU		(GPIOD_BASE	+ 0x00000008)
GPIOD_PUPDR					EQU		(GPIOD_BASE	+ 0x0000000C)	
GPIOD_IDR					EQU		(GPIOD_BASE	+ 0x00000010)
GPIOD_ODR					EQU		(GPIOD_BASE	+ 0x00000014)
GPIOD_BSRR					EQU		(GPIOD_BASE	+ 0x00000018)
GPIOD_LCKR					EQU		(GPIOD_BASE	+ 0x0000001C)
GPIOD_AFRL					EQU		(GPIOD_BASE	+ 0x00000020)
GPIOD_AFRH					EQU		(GPIOD_BASE	+ 0x00000024)
GPIOD_BRR					EQU		(GPIOD_BASE	+ 0x00000028)
	
	
	
;
; Регистр GPIOF	
;
GPIOF_MODER					EQU		(GPIOF_BASE	+ 0x00000000)
GPIOF_OTYPER				EQU		(GPIOF_BASE	+ 0x00000004)
GPIOF_OSPEEDR				EQU		(GPIOF_BASE	+ 0x00000008)
GPIOF_PUPDR					EQU		(GPIOF_BASE	+ 0x0000000C)	
GPIOF_IDR					EQU		(GPIOF_BASE	+ 0x00000010)
GPIOF_ODR					EQU		(GPIOF_BASE	+ 0x00000014)
GPIOF_BSRR					EQU		(GPIOF_BASE	+ 0x00000018)
GPIOF_LCKR					EQU		(GPIOF_BASE	+ 0x0000001C)
GPIOF_AFRL					EQU		(GPIOF_BASE	+ 0x00000020)
GPIOF_AFRH					EQU		(GPIOF_BASE	+ 0x00000024)
GPIOF_BRR					EQU		(GPIOF_BASE	+ 0x00000028)	


;
;	EXTI
;
EXTI_IMR          			EQU		(EXTI_BASE + 0x00000000)			;EXTI Interrupt mask register */
EXTI_EMR          			EQU		(EXTI_BASE + 0x00000004)			;EXTI Event mask register */
EXTI_RTSR         			EQU		(EXTI_BASE + 0x00000008)			;EXTI Rising trigger selection register */
EXTI_FTSR         			EQU		(EXTI_BASE + 0x0000000C)			;EXTI Falling trigger selection register */
EXTI_SWIER        			EQU		(EXTI_BASE + 0x00000010)			;EXTI Software interrupt event register */
EXTI_PR           			EQU		(EXTI_BASE + 0x00000014)			;EXTI Pending register */
		
		
;
; 	Регистр TIM1
;
TIM1_CR1					EQU		(TIM1_BASE + 0x00000000)			; TIM control register 1 */					
TIM1_CR2					EQU		(TIM1_BASE + 0x00000004)          	; TIM control register 2 */
TIM1_SMCR					EQU		(TIM1_BASE + 0x00000008)          	; TIM slave Mode Control register */
TIM1_DIER					EQU		(TIM1_BASE + 0x0000000C)         	; TIM DMA/interrupt enable register */
TIM1_SR						EQU		(TIM1_BASE + 0x00000010)          	; TIM status register */
TIM1_EGR					EQU		(TIM1_BASE + 0x00000014)          	; TIM event generation register */
TIM1_CCMR1					EQU		(TIM1_BASE + 0x00000018)       		; TIM capture/compare mode register 1 */
TIM1_CCMR2					EQU		(TIM1_BASE + 0x0000001C)        	; TIM capture/compare mode register 2 */
TIM1_CCER					EQU		(TIM1_BASE + 0x00000020)         	; TIM capture/compare enable register */
TIM1_CNT					EQU		(TIM1_BASE + 0x00000024)          	; TIM counter register */
TIM1_PSC					EQU		(TIM1_BASE + 0x00000028)          	; TIM prescaler register */
TIM1_ARR					EQU		(TIM1_BASE + 0x0000002C)          	; TIM auto-reload register */
TIM1_RCR					EQU		(TIM1_BASE + 0x00000030)          	; TIM  repetition counter register */
TIM1_CCR1 					EQU		(TIM1_BASE + 0x00000034)         	; TIM capture/compare register 1 */    
TIM1_CCR2					EQU		(TIM1_BASE + 0x00000038)         	; TIM capture/compare register 2 */    
TIM1_CCR3 					EQU		(TIM1_BASE + 0x0000003C)        	; TIM capture/compare register 3 */
TIM1_CCR4 					EQU		(TIM1_BASE + 0x00000040)         	; TIM capture/compare register 4 */
TIM1_BDTR 					EQU		(TIM1_BASE + 0x00000044)          	; TIM break and dead-time register */
TIM1_DCR					EQU		(TIM1_BASE + 0x00000048)          	; TIM DMA control register */
TIM1_DMAR					EQU		(TIM1_BASE + 0x0000004C)          	; TIM DMA address for full transfer register */
TIM1_OR						EQU		(TIM1_BASE + 0x00000050)          	; TIM option register */	


;
; 	Регистр TIM2
;	
TIM2_CR1					EQU		(TIM2_BASE + 0x00000000)			; TIM control register 1 */					
TIM2_CR2					EQU		(TIM2_BASE + 0x00000004)          	; TIM control register 2 */
TIM2_SMCR					EQU		(TIM2_BASE + 0x00000008)          	; TIM slave Mode Control register */
TIM2_DIER					EQU		(TIM2_BASE + 0x0000000C)         	; TIM DMA/interrupt enable register */
TIM2_SR						EQU		(TIM2_BASE + 0x00000010)          	; TIM status register */
TIM2_EGR					EQU		(TIM2_BASE + 0x00000014)          	; TIM event generation register */
TIM2_CCMR1					EQU		(TIM2_BASE + 0x00000018)       		; TIM capture/compare mode register 1 */
TIM2_CCMR2					EQU		(TIM2_BASE + 0x0000001C)        	; TIM capture/compare mode register 2 */
TIM2_CCER					EQU		(TIM2_BASE + 0x00000020)         	; TIM capture/compare enable register */
TIM2_CNT					EQU		(TIM2_BASE + 0x00000024)          	; TIM counter register */
TIM2_PSC					EQU		(TIM2_BASE + 0x00000028)          	; TIM prescaler register */
TIM2_ARR					EQU		(TIM2_BASE + 0x0000002C)          	; TIM auto-reload register */
TIM2_RCR					EQU		(TIM2_BASE + 0x00000030)          	; TIM  repetition counter register */
TIM2_CCR1 					EQU		(TIM2_BASE + 0x00000034)         	; TIM capture/compare register 1 */    
TIM2_CCR2					EQU		(TIM2_BASE + 0x00000038)         	; TIM capture/compare register 2 */    
TIM2_CCR3 					EQU		(TIM2_BASE + 0x0000003C)        	; TIM capture/compare register 3 */
TIM2_CCR4 					EQU		(TIM2_BASE + 0x00000040)         	; TIM capture/compare register 4 */
TIM2_BDTR 					EQU		(TIM2_BASE + 0x00000044)          	; TIM break and dead-time register */
TIM2_DCR					EQU		(TIM2_BASE + 0x00000048)         	; TIM DMA control register */
TIM2_DMAR					EQU		(TIM2_BASE + 0x0000004C)          	; TIM DMA address for full transfer register */
TIM2_OR						EQU		(TIM2_BASE + 0x00000050)          	; TIM option register */
												
												
;
; Регистр TIM3
;
TIM3_CR1					EQU		(TIM3_BASE + 0x00000000)			; TIM control register 1 */					
TIM3_CR2					EQU		(TIM3_BASE + 0x00000004)          	; TIM control register 2 */
TIM3_SMCR					EQU		(TIM3_BASE + 0x00000008)          	; TIM slave Mode Control register */
TIM3_DIER					EQU		(TIM3_BASE + 0x0000000C)         	; TIM DMA/interrupt enable register */
TIM3_SR						EQU		(TIM3_BASE + 0x00000010)          	; TIM status register */
TIM3_EGR					EQU		(TIM3_BASE + 0x00000014)          	; TIM event generation register */
TIM3_CCMR1					EQU		(TIM3_BASE + 0x00000018)       		; TIM capture/compare mode register 1 */
TIM3_CCMR2					EQU		(TIM3_BASE + 0x0000001C)        	; TIM capture/compare mode register 2 */
TIM3_CCER					EQU		(TIM3_BASE + 0x00000020)         	; TIM capture/compare enable register */
TIM3_CNT					EQU		(TIM3_BASE + 0x00000024)          	; TIM counter register */
TIM3_PSC					EQU		(TIM3_BASE + 0x00000028)          	; TIM prescaler register */
TIM3_ARR					EQU		(TIM3_BASE + 0x0000002C)          	; TIM auto-reload register */
TIM3_RCR					EQU		(TIM3_BASE + 0x00000030)          	; TIM  repetition counter register */
TIM3_CCR1 					EQU		(TIM3_BASE + 0x00000034)         	; TIM capture/compare register 1 */    
TIM3_CCR2					EQU		(TIM3_BASE + 0x00000038)         	; TIM capture/compare register 2 */    
TIM3_CCR3 					EQU		(TIM3_BASE + 0x0000003C)        	; TIM capture/compare register 3 */
TIM3_CCR4 					EQU		(TIM3_BASE + 0x00000040)         	; TIM capture/compare register 4 */
TIM3_BDTR 					EQU		(TIM3_BASE + 0x00000044)          	; TIM break and dead-time register */
TIM3_DCR					EQU		(TIM3_BASE + 0x00000048)          	; TIM DMA control register */
TIM3_DMAR					EQU		(TIM3_BASE + 0x0000004C)          	; TIM DMA address for full transfer register */
TIM3_OR						EQU		(TIM3_BASE + 0x00000050)          	; TIM option register */	
												
												
;
; Регистр TIM6
;							
TIM6_CR1					EQU		(TIM6_BASE + 0x00000000)			; TIM control register 1 */					
TIM6_CR2					EQU		(TIM6_BASE + 0x00000004)          	; TIM control register 2 */
TIM6_SMCR					EQU		(TIM6_BASE + 0x00000008)          	; TIM slave Mode Control register */
TIM6_DIER					EQU		(TIM6_BASE + 0x0000000C)         	; TIM DMA/interrupt enable register */
TIM6_SR						EQU		(TIM6_BASE + 0x00000010)          	; TIM status register */
TIM6_EGR					EQU		(TIM6_BASE + 0x00000014)          	; TIM event generation register */
TIM6_CCMR1					EQU		(TIM6_BASE + 0x00000018)       		; TIM capture/compare mode register 1 */
TIM6_CCMR2					EQU		(TIM6_BASE + 0x0000001C)        	; TIM capture/compare mode register 2 */
TIM6_CCER					EQU		(TIM6_BASE + 0x00000020)         	; TIM capture/compare enable register */
TIM6_CNT					EQU		(TIM6_BASE + 0x00000024)          	; TIM counter register */
TIM6_PSC					EQU		(TIM6_BASE + 0x00000028)          	; TIM prescaler register */
TIM6_ARR					EQU		(TIM6_BASE + 0x0000002C)          	; TIM auto-reload register */
TIM6_RCR					EQU		(TIM6_BASE + 0x00000030)          	; TIM  repetition counter register */
TIM6_CCR1 					EQU		(TIM6_BASE + 0x00000034)         	; TIM capture/compare register 1 */    
TIM6_CCR2					EQU		(TIM6_BASE + 0x00000038)         	; TIM capture/compare register 2 */    
TIM6_CCR3 					EQU		(TIM6_BASE + 0x0000003C)        	; TIM capture/compare register 3 */
TIM6_CCR4 					EQU		(TIM6_BASE + 0x00000040)        	; TIM capture/compare register 4 */
TIM6_BDTR 					EQU		(TIM6_BASE + 0x00000044)          	; TIM break and dead-time register */
TIM6_DCR					EQU		(TIM6_BASE + 0x00000048)          	; TIM DMA control register */
TIM6_DMAR					EQU		(TIM6_BASE + 0x0000004C)          	; TIM DMA address for full transfer register */
TIM6_OR						EQU		(TIM6_BASE + 0x00000050)          	; TIM option register */		
												
												
;
; Регистр TIM14
;								
TIM14_CR1					EQU		(TIM14_BASE + 0x00000000)			; TIM control register 1 */					
TIM14_CR2					EQU		(TIM14_BASE + 0x00000004)          	; TIM control register 2 */
TIM14_SMCR					EQU		(TIM14_BASE + 0x00000008)          	; TIM slave Mode Control register */
TIM14_DIER					EQU		(TIM14_BASE + 0x0000000C)         	; TIM DMA/interrupt enable register */
TIM14_SR					EQU		(TIM14_BASE + 0x00000010)          	; TIM status register */
TIM14_EGR					EQU		(TIM14_BASE + 0x00000014)          	; TIM event generation register */
TIM14_CCMR1					EQU		(TIM14_BASE + 0x00000018)       	; TIM capture/compare mode register 1 */
TIM14_CCMR2					EQU		(TIM14_BASE + 0x0000001C)        	; TIM capture/compare mode register 2 */
TIM14_CCER					EQU		(TIM14_BASE + 0x00000020)         	; TIM capture/compare enable register */
TIM14_CNT					EQU		(TIM14_BASE + 0x00000024)          	; TIM counter register */
TIM14_PSC					EQU		(TIM14_BASE + 0x00000028)          	; TIM prescaler register */
TIM14_ARR					EQU		(TIM14_BASE + 0x0000002C)          	; TIM auto-reload register */
TIM14_RCR					EQU		(TIM14_BASE + 0x00000030)          	; TIM  repetition counter register */
TIM14_CCR1 					EQU		(TIM14_BASE + 0x00000034)         	; TIM capture/compare register 1 */    
TIM14_CCR2					EQU		(TIM14_BASE + 0x00000038)         	; TIM capture/compare register 2 */    
TIM14_CCR3 					EQU		(TIM14_BASE + 0x0000003C)        	; TIM capture/compare register 3 */
TIM14_CCR4 					EQU		(TIM14_BASE + 0x00000040)         	; TIM capture/compare register 4 */
TIM14_BDTR 					EQU		(TIM14_BASE + 0x00000044)          	; TIM break and dead-time register */
TIM14_DCR					EQU		(TIM14_BASE + 0x00000048)          	; TIM DMA control register */
TIM14_DMAR					EQU		(TIM14_BASE + 0x0000004C)          	; TIM DMA address for full transfer register */
TIM14_OR					EQU		(TIM14_BASE + 0x00000050)          	; TIM option register */		
												
												
;
; Регистр TIM15
;								
TIM15_CR1					EQU		(TIM15_BASE + 0x00000000)			; TIM control register 1 */					
TIM15_CR2					EQU		(TIM15_BASE + 0x00000004)          	; TIM control register 2 */
TIM15_SMCR					EQU		(TIM15_BASE + 0x00000008)          	; TIM slave Mode Control register */
TIM15_DIER					EQU		(TIM15_BASE + 0x0000000C)         	; TIM DMA/interrupt enable register */
TIM15_SR					EQU		(TIM15_BASE + 0x00000010)          	; TIM status register */
TIM15_EGR					EQU		(TIM15_BASE + 0x00000014)          	; TIM event generation register */
TIM15_CCMR1					EQU		(TIM15_BASE + 0x00000018)       	; TIM capture/compare mode register 1 */
TIM15_CCMR2					EQU		(TIM15_BASE + 0x0000001C)        	; TIM capture/compare mode register 2 */
TIM15_CCER					EQU		(TIM15_BASE + 0x00000020)         	; TIM capture/compare enable register */
TIM15_CNT					EQU		(TIM15_BASE + 0x00000024)          	; TIM counter register */
TIM15_PSC					EQU		(TIM15_BASE + 0x00000028)          	; TIM prescaler register */
TIM15_ARR					EQU		(TIM15_BASE + 0x0000002C)          	; TIM auto-reload register */
TIM15_RCR					EQU		(TIM15_BASE + 0x00000030)          	; TIM  repetition counter register */
TIM15_CCR1 					EQU		(TIM15_BASE + 0x00000034)         	; TIM capture/compare register 1 */    
TIM15_CCR2					EQU		(TIM15_BASE + 0x00000038)         	; TIM capture/compare register 2 */    
TIM15_CCR3 					EQU		(TIM15_BASE + 0x0000003C)        	; TIM capture/compare register 3 */
TIM15_CCR4 					EQU		(TIM15_BASE + 0x00000040)         	; TIM capture/compare register 4 */
TIM15_BDTR 					EQU		(TIM15_BASE + 0x00000044)          	; TIM break and dead-time register */
TIM15_DCR					EQU		(TIM15_BASE + 0x00000048)          	; TIM DMA control register */
TIM15_DMAR					EQU		(TIM15_BASE + 0x0000004C)          	; TIM DMA address for full transfer register */
TIM15_OR					EQU		(TIM15_BASE + 0x00000050)          	; TIM option register */	



;
; Регистр TIM16
;
TIM16_CR1					EQU		(TIM16_BASE + 0x00000000)			; TIM control register 1 */					
TIM16_CR2					EQU		(TIM16_BASE + 0x00000004)          	; TIM control register 2 */
TIM16_SMCR					EQU		(TIM16_BASE + 0x00000008)          	; TIM slave Mode Control register */
TIM16_DIER					EQU		(TIM16_BASE + 0x0000000C)         	; TIM DMA/interrupt enable register */
TIM16_SR					EQU		(TIM16_BASE + 0x00000010)          	; TIM status register */
TIM16_EGR					EQU		(TIM16_BASE + 0x00000014)          	; TIM event generation register */
TIM16_CCMR1					EQU		(TIM16_BASE + 0x00000018)       	; TIM capture/compare mode register 1 */
TIM16_CCMR2					EQU		(TIM16_BASE + 0x0000001C)        	; TIM capture/compare mode register 2 */
TIM16_CCER					EQU		(TIM16_BASE + 0x00000020)         	; TIM capture/compare enable register */
TIM16_CNT					EQU		(TIM16_BASE + 0x00000024)          	; TIM counter register */
TIM16_PSC					EQU		(TIM16_BASE + 0x00000028)          	; TIM prescaler register */
TIM16_ARR					EQU		(TIM16_BASE + 0x0000002C)          	; TIM auto-reload register */
TIM16_RCR					EQU		(TIM16_BASE + 0x00000030)          	; TIM  repetition counter register */
TIM16_CCR1 					EQU		(TIM16_BASE + 0x00000034)         	; TIM capture/compare register 1 */    
TIM16_CCR2					EQU		(TIM16_BASE + 0x00000038)         	; TIM capture/compare register 2 */    
TIM16_CCR3 					EQU		(TIM16_BASE + 0x0000003C)        	; TIM capture/compare register 3 */
TIM16_CCR4 					EQU		(TIM16_BASE + 0x00000040)         	; TIM capture/compare register 4 */
TIM16_BDTR 					EQU		(TIM16_BASE + 0x00000044)          	; TIM break and dead-time register */
TIM16_DCR					EQU		(TIM16_BASE + 0x00000048)          	; TIM DMA control register */
TIM16_DMAR					EQU		(TIM16_BASE + 0x0000004C)          	; TIM DMA address for full transfer register */
TIM16_OR					EQU		(TIM16_BASE + 0x00000050)          	; TIM option register */	



;
; Регистр TIM17
;								
TIM17_CR1					EQU		(TIM17_BASE + 0x00000000)			; TIM control register 1 */					
TIM17_CR2					EQU		(TIM17_BASE + 0x00000004)          	; TIM control register 2 */
TIM17_SMCR					EQU		(TIM17_BASE + 0x00000008)          	; TIM slave Mode Control register */
TIM17_DIER					EQU		(TIM17_BASE + 0x0000000C)         	; TIM DMA/interrupt enable register */
TIM17_SR					EQU		(TIM17_BASE + 0x00000010)          	; TIM status register */
TIM17_EGR					EQU		(TIM17_BASE + 0x00000014)          	; TIM event generation register */
TIM17_CCMR1					EQU		(TIM17_BASE + 0x00000018)       	; TIM capture/compare mode register 1 */
TIM17_CCMR2					EQU		(TIM17_BASE + 0x0000001C)        	; TIM capture/compare mode register 2 */
TIM17_CCER					EQU		(TIM17_BASE + 0x00000020)         	; TIM capture/compare enable register */
TIM17_CNT					EQU		(TIM17_BASE + 0x00000024)          	; TIM counter register */
TIM17_PSC					EQU		(TIM17_BASE + 0x00000028)          	; TIM prescaler register */
TIM17_ARR					EQU		(TIM17_BASE + 0x0000002C)          	; TIM auto-reload register */
TIM17_RCR					EQU		(TIM17_BASE + 0x00000030)          	; TIM  repetition counter register */
TIM17_CCR1 					EQU		(TIM17_BASE + 0x00000034)         	; TIM capture/compare register 1 */    
TIM17_CCR2					EQU		(TIM17_BASE + 0x00000038)         	; TIM capture/compare register 2 */    
TIM17_CCR3 					EQU		(TIM17_BASE + 0x0000003C)        	; TIM capture/compare register 3 */
TIM17_CCR4 					EQU		(TIM17_BASE + 0x00000040)         	; TIM capture/compare register 4 */
TIM17_BDTR 					EQU		(TIM17_BASE + 0x00000044)          	; TIM break and dead-time register */
TIM17_DCR					EQU		(TIM17_BASE + 0x00000048)          	; TIM DMA control register */
TIM17_DMAR					EQU		(TIM17_BASE + 0x0000004C)          	; TIM DMA address for full transfer register */
TIM17_OR					EQU		(TIM17_BASE + 0x00000050)          	; TIM option register */	


;
;	RTC 
;
RTC_TR         				EQU		(RTC_BASE + 0x00000000)				; RTC time register */
RTC_DR         				EQU		(RTC_BASE + 0x00000004)       		; RTC date register */
RTC_CR         				EQU		(RTC_BASE + 0x00000008)       		; RTC control register */                                                                                            
RTC_ISR         			EQU		(RTC_BASE + 0x0000000C)       		; RTC initialization and status register */
RTC_PRER         			EQU		(RTC_BASE + 0x00000010)       		; RTC prescaler register */
RTC_RESERVED1       		EQU		(RTC_BASE + 0x00000014)  			; Reserved */
RTC_RESERVED2       		EQU		(RTC_BASE + 0x00000018)  			; Reserved */
RTC_ALRMAR         			EQU		(RTC_BASE + 0x0000001C)     		; RTC alarm A register */
RTC_RESERVED3       		EQU		(RTC_BASE + 0x00000020)  			; Reserved */
RTC_WPR         			EQU		(RTC_BASE + 0x00000024)       		; RTC write protection register */
RTC_SSR         			EQU		(RTC_BASE + 0x00000028)       		; RTC sub second register */
RTC_SHIFTR         			EQU		(RTC_BASE + 0x0000002C)     		; RTC shift control register */
RTC_TSTR         			EQU		(RTC_BASE + 0x00000030)       		; RTC time stamp time register */
RTC_TSDR         			EQU		(RTC_BASE + 0x00000034)       		; RTC time stamp date register */
RTC_TSSSR         			EQU		(RTC_BASE + 0x00000038)      		; RTC time-stamp sub second register */
RTC_CALR         			EQU		(RTC_BASE + 0x0000003C)       		; RTC calibration register */
RTC_TAFCR         			EQU		(RTC_BASE + 0x00000040)      		; RTC tamper and alternate function configuration register */
RTC_ALRMASSR        		EQU		(RTC_BASE + 0x00000044)   			; RTC alarm A sub second register */
RTC_RESERVED4       		EQU		(RTC_BASE + 0x00000048)  			; Reserved */
RTC_RESERVED5       		EQU		(RTC_BASE + 0x0000004C)  			; Reserved */
RTC_BKP0R         			EQU		(RTC_BASE + 0x00000050)      		; RTC backup register 0 */
RTC_BKP1R         			EQU		(RTC_BASE + 0x00000054)     		; RTC backup register 1 */
RTC_BKP2R         			EQU		(RTC_BASE + 0x00000058)      		; RTC backup register 2 */
RTC_BKP3R         			EQU		(RTC_BASE + 0x0000005C)      		; RTC backup register 3 */
RTC_BKP4R         			EQU		(RTC_BASE + 0x00000060)      		; RTC backup register 4 */


;
;	DAC1
;
DAC1_CR            			EQU		(DAC_BASE + 0x00000000)				; DAC control register */
DAC1_SWTRIGR       			EQU		(DAC_BASE + 0x00000004)				; DAC software trigger register */
DAC1_DHR12R1       			EQU		(DAC_BASE + 0x00000008)				; DAC channel1 12-bit right-aligned data holding register */
DAC1_DHR12L1       			EQU		(DAC_BASE + 0x0000000C)				; DAC channel1 12-bit left aligned data holding register */
DAC1_DHR8R1        			EQU		(DAC_BASE + 0x00000010)				; DAC channel1 8-bit right aligned data holding register */
DAC1_RESERVED1  			EQU		(DAC_BASE + 0x00000014)				; Reserved */
DAC1_DOR1          			EQU		(DAC_BASE + 0x0000002C)				; DAC channel1 data output register */
DAC1_RESERVED2     			EQU		(DAC_BASE + 0x00000030)				; Reserved */
DAC1_SR            			EQU		(DAC_BASE + 0x00000034)				; DAC status register */
											

;
;	CEC
;
CEC_CR            			EQU		(CEC_BASE + 0x00000000)				; CEC control register */
CEC_CFGR          			EQU		(CEC_BASE + 0x00000004)				; CEC configuration register */
CEC_TXDR          			EQU		(CEC_BASE + 0x00000008)				; CEC Tx data register */
CEC_RXDR           			EQU		(CEC_BASE + 0x0000000C)				; CEC Rx Data Register */
CEC_ISR           			EQU		(CEC_BASE + 0x00000010)				; CEC Interrupt and Status Register */
CEC_IER          			EQU		(CEC_BASE + 0x00000014)				; CEC interrupt enable register */
											

;
;	SYSCFG
;
SYSCFG_CFGR1        		EQU		(SYSCFG_BASE + 0x00000000)			; SYSCFG configuration register 1 */
SYSCFG_RESERVED     		EQU		(SYSCFG_BASE + 0x00000004)			; Reserved */
SYSCFG_EXTICR_1    			EQU		(SYSCFG_BASE + 0x00000008)			; SYSCFG external interrupt configuration register 1 */
SYSCFG_EXTICR_2    			EQU		(SYSCFG_BASE + 0x0000000C)			; SYSCFG external interrupt configuration register 2 */
SYSCFG_EXTICR_3    			EQU		(SYSCFG_BASE + 0x00000010)			; SYSCFG external interrupt configuration register 3 */
SYSCFG_EXTICR_4    			EQU		(SYSCFG_BASE + 0x00000014)			; SYSCFG external interrupt configuration register 4 */
SYSCFG_CFGR2       			EQU		(SYSCFG_BASE + 0x00000018)			; SYSCFG configuration register 2 */
											
												
;
;	COMP1
;
COMP1_CSR          			EQU		(COMP_BASE + 0x00000000)			; COMP control and status register */
												
												
;
;	COMP2
;
COMP2_CSR          			EQU		((COMP_BASE + 0x00000002) + 0x00000000)			; COMP control and status register */
												
												
;
;	COMP12_COMMON
;
COMP12_COMMON_CSR   		EQU		(COMP_BASE + 0x00000000)			; COMP control and status register, used for bits common to several COMP instances */
												
												
;
;	WWDG
;												
WWDG_CR						EQU		(WWDG_BASE + 0x00000000)   			; WWDG Control register */
WWDG_CFR					EQU		(WWDG_BASE + 0x00000004) 			; WWDG Configuration register */
WWDG_SR						EQU		(WWDG_BASE + 0x00000008)   			; WWDG Status register */

											
;
;	IWDG
;
IWDG_KR						EQU		(IWDG_BASE + 0x00000000)    		; IWDG Key register */
IWDG_PR    					EQU		(IWDG_BASE + 0x00000004) 			; IWDG Prescaler register */
IWDG_RLR   					EQU		(IWDG_BASE + 0x00000008)			; IWDG Reload register */
IWDG_SR    					EQU		(IWDG_BASE + 0x0000000C)			; IWDG Status register */
IWDG_WINR  					EQU		(IWDG_BASE + 0x00000010)			; IWDG Window register */
	
	
;
;	DBGMCU_BASE
;												
DBGMCU_IDCODE       		EQU		(DBGMCU_BASE + 0x00000000)			; MCU device ID code */
DBGMCU_CR           		EQU		(DBGMCU_BASE + 0x00000004)			; Debug MCU configuration register */
DBGMCU_APB1FZ       		EQU		(DBGMCU_BASE + 0x00000008)			; Debug MCU APB1 freeze register */
DBGMCU_APB2FZ       		EQU		(DBGMCU_BASE + 0x0000000C)			; Debug MCU APB2 freeze register */
	
	
;
;	FLASH
;	
FLASH_ACR          			EQU		(FLASH_R_BASE + 0x00000000)			;FLASH access control register */
FLASH_KEYR         			EQU		(FLASH_R_BASE + 0x00000004)			;FLASH key register */
FLASH_OPTKEYR      			EQU		(FLASH_R_BASE + 0x00000008)			;FLASH OPT key register */
FLASH_SR           			EQU		(FLASH_R_BASE + 0x0000000C)			;FLASH status register */
FLASH_CR           			EQU		(FLASH_R_BASE + 0x00000010)			;FLASH control register */
FLASH_AR           			EQU		(FLASH_R_BASE + 0x00000014)			;FLASH address register */
FLASH_RESERVED     			EQU		(FLASH_R_BASE + 0x00000018)			; Reserved */
FLASH_OBR          			EQU		(FLASH_R_BASE + 0x0000001C)			;FLASH option bytes register */
FLASH_WRPR         			EQU		(FLASH_R_BASE + 0x00000020)			;FLASH option bytes register */
													
											
;
;	OB
;
OB_RDP          			EQU		(OB_BASE + 0x00000000)				; FLASH option byte Read protection */
OB_USER         			EQU		(OB_BASE + 0x00000002)				; FLASH option byte user options */
OB_DATA0        			EQU		(OB_BASE + 0x00000004)				; User data byte 0 (stored in FLASH_OBR[23:16]) */
OB_DATA1        			EQU		(OB_BASE + 0x00000006)				; User data byte 1 (stored in FLASH_OBR[31:24]) */
OB_WRP0         			EQU		(OB_BASE + 0x00000008)				; FLASH option byte write protection 0 */
OB_WRP1         			EQU		(OB_BASE + 0x0000000A)				; FLASH option byte write protection 1 */
	
	
;
;	CRC
;
CRC_DR          			EQU		(CRC_BASE + 0x00000000)				; CRC Data register */
CRC_IDR         			EQU		(CRC_BASE + 0x00000004)				; CRC Independent data register */
CRC_RESERVED0   			EQU		(CRC_BASE + 0x00000005)				; Reserved */
CRC_RESERVED1   			EQU		(CRC_BASE + 0x00000006)				; Reserved */
CRC_CR          			EQU		(CRC_BASE + 0x00000008)				; CRC Control register */ 
CRC_RESERVED2   			EQU		(CRC_BASE + 0x0000000C)				; Reserved */
CRC_INIT        			EQU		(CRC_BASE + 0x00000010)				; Initial CRC value register */
CRC_RESERVED3   			EQU		(CRC_BASE + 0x00000014)				; Reserved */
													
												
;
;	 Touch Sensing Controller 
;	
TSC_CR        				EQU		(TSC_BASE + 0x00000000)				; TSC control register */
TSC_IER       				EQU		(TSC_BASE +	0x00000004)				; TSC interrupt enable register */
TSC_ICR       				EQU		(TSC_BASE +	0x00000008)				; TSC interrupt clear register */
TSC_ISR       				EQU		(TSC_BASE +	0x0000000C)				; TSC interrupt status register */
TSC_IOHCR     				EQU		(TSC_BASE + 0x00000010)				; TSC I/O hysteresis control register */
TSC_RESERVED1 				EQU		(TSC_BASE + 0x00000014)				; Reserved */
TSC_IOASCR    				EQU		(TSC_BASE +	0x00000018)				; TSC I/O analog switch control register */
TSC_RESERVED2 				EQU		(TSC_BASE +	0x0000001C)				; Reserved */
TSC_IOSCR     				EQU		(TSC_BASE +	0x00000020)				; TSC I/O sampling control register */
TSC_RESERVED3 				EQU		(TSC_BASE +	0x00000024)				; Reserved */
TSC_IOCCR     				EQU		(TSC_BASE +	0x00000028)				; TSC I/O channel control register */
TSC_RESERVED4 				EQU		(TSC_BASE +	0x0000002C)				; Reserved */
TSC_IOGCSR    				EQU		(TSC_BASE +	0x00000030)				; TSC I/O group control status register */
TSC_IOGXCR_1 				EQU		(TSC_BASE +	0x00000034)				; TSC I/O group x counter register */
TSC_IOGXCR_2 				EQU		(TSC_BASE +	0x00000038)				; TSC I/O group x counter register */
TSC_IOGXCR_3 				EQU		(TSC_BASE +	0x0000003C)				; TSC I/O group x counter register */
TSC_IOGXCR_4 				EQU		(TSC_BASE +	0x00000040)				; TSC I/O group x counter register */
TSC_IOGXCR_5 				EQU		(TSC_BASE +	0x00000044)				; TSC I/O group x counter register */
TSC_IOGXCR_6 				EQU		(TSC_BASE +	0x00000048)				; TSC I/O group x counter register */
TSC_IOGXCR_7 				EQU		(TSC_BASE +	0x0000004C)				; TSC I/O group x counter register */
TSC_IOGXCR_8 				EQU		(TSC_BASE +	0x00000050)				; TSC I/O group x counter register */										
																									
												
;
;	USART1
;
USART1_CR1     				EQU		(USART1_BASE + 0x00000000)			; USART Control register 1 */ 
USART1_CR2     				EQU		(USART1_BASE + 0x00000004)			; USART Control register 2 */ 
USART1_CR3    				EQU		(USART1_BASE + 0x00000008)			; USART Control register 3 */
USART1_BRR    				EQU		(USART1_BASE + 0x0000000C)			; USART Baud rate register */
USART1_GTPR   				EQU		(USART1_BASE + 0x00000010)			; USART Guard time and prescaler register */
USART1_RTOR   				EQU		(USART1_BASE + 0x00000014)			; USART Receiver Time Out register */  
USART1_RQR   				EQU		(USART1_BASE + 0x00000018)			; USART Request register */
USART1_ISR    				EQU		(USART1_BASE + 0x0000001C)			; USART Interrupt and status register */
USART1_ICR    				EQU		(USART1_BASE + 0x00000020)			; USART Interrupt flag Clear register */
USART1_RDR    				EQU		(USART1_BASE + 0x00000024)			; USART Receive Data register */
USART1_RESERVED1  			EQU		(USART1_BASE + 0x00000026)			; Reserved */
USART1_TDR   				EQU		(USART1_BASE + 0x00000028)	 		; USART Transmit Data register */
USART1_RESERVED2  			EQU		(USART1_BASE + 0x0000002A)			; Reserved */
			
			
; 
; 	USART2
;
USART2_CR1     				EQU		(USART2_BASE + 0x00000000)			; USART Control register 1 */ 
USART2_CR2     				EQU		(USART2_BASE + 0x00000004)			; USART Control register 2 */ 
USART2_CR3    				EQU		(USART2_BASE + 0x00000008)			; USART Control register 3 */
USART2_BRR    				EQU		(USART2_BASE + 0x0000000C)			; USART Baud rate register */
USART2_GTPR   				EQU		(USART2_BASE + 0x00000010)			; USART Guard time and prescaler register */
USART2_RTOR   				EQU		(USART2_BASE + 0x00000014)			; USART Receiver Time Out register */  
USART2_RQR   				EQU		(USART2_BASE + 0x00000018)			; USART Request register */
USART2_ISR    				EQU		(USART2_BASE + 0x0000001C)			; USART Interrupt and status register */
USART2_ICR    				EQU		(USART2_BASE + 0x00000020)			; USART Interrupt flag Clear register */
USART2_RDR    				EQU		(USART2_BASE + 0x00000024)			; USART Receive Data register */
USART2_RESERVED1  			EQU		(USART2_BASE + 0x00000026)			; Reserved */
USART2_TDR   				EQU		(USART2_BASE + 0x00000028)	 		; USART Transmit Data register */
USART2_RESERVED2  			EQU		(USART2_BASE + 0x0000002A)			; Reserved */
													
	END
