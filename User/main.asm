;******************** 2019 Andrey Zaostrovnykh ********************
;
; 	������������� �����
;
Stack_Size		EQU     0x400	; ��������� ��������� Stack_Size ������ 0x400 

				; ������ ������ � ������ ��� ��������� STACK
				; NOINIT - ������ � ������ ����������� ������
				; READWRITE - ������ �������� �� ������ � ������
				; ALIGN=3 - ������������ ������ �� ������� 8 ���� (2^3)
                AREA    STACK, NOINIT, READWRITE, ALIGN=3  
					
				; �������� ������������ ��������� ������� ��� ������� �����
				; ��������� ������ Stack_Size ������
Stack_Mem       SPACE   Stack_Size
	
				; ������� ����� ��� ������������� � ������� ��������
				; �������������� ���������� ������ ����� ������� �����
				; ��� ����� ������� ��������� ��������� ��������� �����
__initial_sp


;
; 	������������� ����
;


Heap_Size      	EQU     0x200	; ��������� ��������� Heap_Size ������ 0x200 

				; ������� ������ � ������ ��� ��������� HEAP
				; NOINIT - ������ � ������ ����������� ������
				; READWRITE - ������ �������� �� ������ � ������
				; ALIGN=3 - ������������ ������ �� ������� 8 ���� (2^3) 
                AREA    HEAP, NOINIT, READWRITE, ALIGN=3
					
				; ������� ����� ��� ����������� ������ ����			
__heap_base

				; �������� ������������ ��� ���� ������������� �������
Heap_Mem        SPACE   Heap_Size
	
				; ������� ����� ����� ����
__heap_limit

				; ��������� ��� ����������� 8-������� ������������ �����
				PRESERVE8
					
				; ��������� ��� ������������� ������ ������ Thumb
				THUMB
     
;	 
; 	������� �������� ����������� �� ����� 0 ��� ������
;
				; �������� ������ RESET � �������� ���������� ������� ����� 
				;  ��������� ������ ������������ � ��������� �������� ��������� �����
				; DATA - ������ �������� ������, � �� ����������
				; READONLY - �������� ������ �� ���������� ����������
				; ������ ����������� ����� ������� CODE �� Flash ������ �� ������ 0x08000000
				; � �� ��������� �������� ���� ������
                AREA    RESET, DATA, READONLY
					
                EXPORT  __Vectors
                EXPORT  __Vectors_End
                EXPORT  __Vectors_Size

;
;	���������� ������� �������� ����������
;	DCD - ��������� 32-������ ����� � ������
;
__Vectors       DCD     __initial_sp                   ; ��������� �������� ��������� �����
                DCD     Reset_Handler                  ; ����� ����������� ������, ������ ����������� ��� ����� ������ ����������
                DCD     NMI_Handler                    ; NMI Handler
                DCD     HardFault_Handler              ; Hard Fault Handler
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved
                DCD     SVC_Handler                    ; SVCall Handler
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved
                DCD     PendSV_Handler                 ; PendSV Handler
                DCD     SysTick_Handler                ; SysTick Handler

                ; ���������� �� ���������
                DCD     WWDG_IRQHandler                ; Window Watchdog
                DCD     PVD_IRQHandler                 ; PVD through EXTI Line detect
                DCD     RTC_IRQHandler                 ; RTC through EXTI Line
                DCD     FLASH_IRQHandler               ; FLASH
                DCD     RCC_IRQHandler                 ; RCC
                DCD     EXTI0_1_IRQHandler             ; EXTI Line 0 and 1
                DCD     EXTI2_3_IRQHandler             ; EXTI Line 2 and 3
                DCD     EXTI4_15_IRQHandler            ; EXTI Line 4 to 15
                DCD     TSC_IRQHandler                 ; TS
                DCD     DMA1_Channel1_IRQHandler       ; DMA1 Channel 1
                DCD     DMA1_Channel2_3_IRQHandler     ; DMA1 Channel 2 and Channel 3
                DCD     DMA1_Channel4_5_IRQHandler     ; DMA1 Channel 4 and Channel 5
                DCD     ADC1_COMP_IRQHandler           ; ADC1, COMP1 and COMP2 
                DCD     TIM1_BRK_UP_TRG_COM_IRQHandler ; TIM1 Break, Update, Trigger and Commutation
                DCD     TIM1_CC_IRQHandler             ; TIM1 Capture Compare
                DCD     TIM2_IRQHandler                ; TIM2
                DCD     TIM3_IRQHandler                ; TIM3
                DCD     TIM6_DAC_IRQHandler            ; TIM6 and DAC
                DCD     0                              ; Reserved
                DCD     TIM14_IRQHandler               ; TIM14
                DCD     TIM15_IRQHandler               ; TIM15
                DCD     TIM16_IRQHandler               ; TIM16
                DCD     TIM17_IRQHandler               ; TIM17
                DCD     I2C1_IRQHandler                ; I2C1
                DCD     I2C2_IRQHandler                ; I2C2
                DCD     SPI1_IRQHandler                ; SPI1
                DCD     SPI2_IRQHandler                ; SPI2
                DCD     USART1_IRQHandler              ; USART1
                DCD     USART2_IRQHandler              ; USART2
                DCD     0                              ; Reserved
                DCD     CEC_IRQHandler                 ; CEC


				; ����� ��� ����������� ����� ������� �������� ����������
__Vectors_End

				; ����� ��� ����������� ������� ������� �������� ����������
__Vectors_Size  EQU  __Vectors_End - __Vectors
	
	
				; �������� ������ ������ ��� ���������� ��������� ���
				; |.text| - ��� ������
				; CODE - ����������� ����, ��� � ������ ��������� ��� ���������
				; READONLY - �������� ������ �� ���������� ����������
                AREA    |.text|, CODE, READONLY
					
				ENTRY
					
; 
; 	���������� ������ Reset Handler
;
Reset_Handler   PROC												; ��������� ������ �������
                EXPORT  Reset_Handler                 	[WEAK]		; ������ ��������� ��� ��������� ����� ��������� ����� ���� �������
																	; WEAK - ������� � ���, ��� ��� ����� ���� ������������� � ������ ����� �������
					
				; ������ ���������������� ���������
				B 		Init
                ENDP			


;######################################################################## 
;							������ ���������
;########################################################################
;
;	���������� ���� � ������������ ������������ ������
;
				GET 	stm32f051r8t6.asm
					
					
Init    		PROC

				; �������� ������������ �� Power Interface 
				LDR 	r0, =(RCC_APB1ENR)							; ���������� � R0 ����� �������� RCC + �������� �������� ��������� APB1ENR
				LDR 	r1, =(1 << 28)								; ������ 28 ���� � �������� 1
				STR 	r1, [r0]									; ���������� �� ������ [R0] �������� �� R1	

				; �������� �������� ��� Flash = 1
				LDR 	r0, =(FLASH_ACR)							
				LDR 	r1, =(1)									; ������ 0 ���� � �������� 1
				STR 	r1, [r0]

				; �������� HSE
				LDR 	r0, =(RCC_CR)							
				LDR 	r1, [r0]	
				LDR 	r2, =(0x10000)	
				ORRS	r2, r2, r1
				STR		r2, [r0]
				
				B	.

				; ����� ���������
				ENDP
					
;######################################################################## 
;							����� ���������
;########################################################################


;
;	����������� ���������� � ���������� �� ���� �� ����� (����������� ����)
;
NMI_Handler     PROC
                EXPORT  NMI_Handler                    	[WEAK]
                B       .
                ENDP
					
					
HardFault_Handler\
                PROC
                EXPORT  HardFault_Handler              	[WEAK]
                B       .
                ENDP
					
					
SVC_Handler     PROC
                EXPORT  SVC_Handler                   	[WEAK]
                B       .
                ENDP
					
					
PendSV_Handler  PROC
                EXPORT  PendSV_Handler                 	[WEAK]
                B       .
                ENDP
					
					
SysTick_Handler PROC
                EXPORT  SysTick_Handler                	[WEAK]
                B       .
                ENDP


Default_Handler PROC

                EXPORT  WWDG_IRQHandler                	[WEAK]
                EXPORT  PVD_IRQHandler                 	[WEAK]
                EXPORT  RTC_IRQHandler                 	[WEAK]
                EXPORT  FLASH_IRQHandler               	[WEAK]
                EXPORT  RCC_IRQHandler                 	[WEAK]
                EXPORT  EXTI0_1_IRQHandler             	[WEAK]
                EXPORT  EXTI2_3_IRQHandler             	[WEAK]
                EXPORT  EXTI4_15_IRQHandler            	[WEAK]
                EXPORT  TSC_IRQHandler                 	[WEAK]
                EXPORT  DMA1_Channel1_IRQHandler       	[WEAK]
                EXPORT  DMA1_Channel2_3_IRQHandler     	[WEAK]
                EXPORT  DMA1_Channel4_5_IRQHandler     	[WEAK]
                EXPORT  ADC1_COMP_IRQHandler           	[WEAK]
                EXPORT  TIM1_BRK_UP_TRG_COM_IRQHandler 	[WEAK]
                EXPORT  TIM1_CC_IRQHandler             	[WEAK]
                EXPORT  TIM2_IRQHandler                	[WEAK]
                EXPORT  TIM3_IRQHandler                	[WEAK]
                EXPORT  TIM6_DAC_IRQHandler            	[WEAK]
                EXPORT  TIM14_IRQHandler               	[WEAK]
                EXPORT  TIM15_IRQHandler               	[WEAK]
                EXPORT  TIM16_IRQHandler               	[WEAK]
                EXPORT  TIM17_IRQHandler               	[WEAK]
                EXPORT  I2C1_IRQHandler                	[WEAK]
                EXPORT  I2C2_IRQHandler                	[WEAK]
                EXPORT  SPI1_IRQHandler                	[WEAK]
                EXPORT  SPI2_IRQHandler                	[WEAK]
                EXPORT  USART1_IRQHandler              	[WEAK]
                EXPORT  USART2_IRQHandler              	[WEAK]
                EXPORT  CEC_IRQHandler                 	[WEAK]

WWDG_IRQHandler
PVD_IRQHandler
RTC_IRQHandler
FLASH_IRQHandler
RCC_IRQHandler
EXTI0_1_IRQHandler
EXTI2_3_IRQHandler
EXTI4_15_IRQHandler
TSC_IRQHandler
DMA1_Channel1_IRQHandler
DMA1_Channel2_3_IRQHandler
DMA1_Channel4_5_IRQHandler
ADC1_COMP_IRQHandler
TIM1_BRK_UP_TRG_COM_IRQHandler
TIM1_CC_IRQHandler
TIM2_IRQHandler
TIM3_IRQHandler
TIM6_DAC_IRQHandler
TIM14_IRQHandler
TIM15_IRQHandler
TIM16_IRQHandler
TIM17_IRQHandler
I2C1_IRQHandler
I2C2_IRQHandler
SPI1_IRQHandler
SPI2_IRQHandler
USART1_IRQHandler
USART2_IRQHandler
CEC_IRQHandler

                B       .

                ENDP

                ALIGN


;*******************************************************************************
; 	���������� � ������������� ����������������� ����� � ����
;*******************************************************************************
;
;                 IF      :DEF:__MICROLIB
;
;					EXPORT  __initial_sp
;					EXPORT  __heap_base
;					EXPORT  __heap_limit
;
;                ELSE
;
;					IMPORT  __use_two_region_memory
;					EXPORT  __user_initial_stackheap
;
;__user_initial_stackheap
;
;					LDR     R0, =  Heap_Mem
;					LDR     R1, =(Stack_Mem + Stack_Size)
;					LDR     R2, = (Heap_Mem +  Heap_Size)
;					LDR     R3, = Stack_Mem
;					BX      LR
;
;					ALIGN
;
;                ENDIF
;
                 END

					
				
				