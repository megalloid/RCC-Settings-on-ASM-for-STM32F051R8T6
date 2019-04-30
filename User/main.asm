;******************** 2019 Andrey Zaostrovnykh ********************
;
; 	Инициализация стека
;
Stack_Size		EQU     0x400	; Объявляем константу Stack_Size равную 0x400 

				; Создаём секцию в памяти под названием STACK
				; NOINIT - данные в секции заполняются нулями
				; READWRITE - секция доступна на чтение и запись
				; ALIGN=3 - выравнивание секции по границе 8 байт (2^3)
                AREA    STACK, NOINIT, READWRITE, ALIGN=3  
					
				; Выделяем пространство заданного размера для области стека
				; Заполняем размер Stack_Size нулями
Stack_Mem       SPACE   Stack_Size
	
				; Создаем метку для использования в таблице векторов
				; Приравнивается следующему адресу после области стека
				; Она будет служить начальным значением указателя стека
__initial_sp


;
; 	Инициализация кучи
;


Heap_Size      	EQU     0x200	; Объявляем константу Heap_Size равную 0x200 

				; Создаем секцию в памяти под названием HEAP
				; NOINIT - данные в секции заполняются нулями
				; READWRITE - секция доступна на чтение и запись
				; ALIGN=3 - выравнивание секции по границе 8 байт (2^3) 
                AREA    HEAP, NOINIT, READWRITE, ALIGN=3
					
				; Создаем метку для обозначения начала кучи			
__heap_base

				; Выделяем пространство для кучи обозначенного размера
Heap_Mem        SPACE   Heap_Size
	
				; Создаем метку конца кучи
__heap_limit

				; Директива для обозначения 8-битного выравнивания стека
				PRESERVE8
					
				; Директива для использования набора команд Thumb
				THUMB
     
;	 
; 	Таблица векторов назначается на адрес 0 при сбросе
;
				; Выделяем секцию RESET с таблицей прерываний которая будет 
				;  содержать адреса обработчиков и начальное значение указателя стека
				; DATA - секция содержит данные, а не инструкции
				; READONLY - защищает секцию от перезаписи программой
				; Секция размещается перед секцией CODE во Flash памяти по адресу 0x08000000
				; С неё процессор начинает свою работу
                AREA    RESET, DATA, READONLY
					
                EXPORT  __Vectors
                EXPORT  __Vectors_End
                EXPORT  __Vectors_Size

;
;	Объявление таблицы векторов прерываний
;	DCD - сохраняет 32-битное слово в памяти
;
__Vectors       DCD     __initial_sp                   ; Начальное значение указателя стека
                DCD     Reset_Handler                  ; Адрес обработчика сброса, отсюда выполняется код после сброса процессора
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

                ; Прерывания от периферии
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


				; Метка для обозначения конца таблицы векторов прерываний
__Vectors_End

				; Метка для обозначения размера таблицы векторов прерываний
__Vectors_Size  EQU  __Vectors_End - __Vectors
	
	
				; Выделяем секцию памяти где фактически находится код
				; |.text| - имя секции
				; CODE - обозначение того, что в секции находится код программы
				; READONLY - защищает секцию от перезаписи программой
                AREA    |.text|, CODE, READONLY
					
				ENTRY
					
; 
; 	Обработчик сброса Reset Handler
;
Reset_Handler   PROC												; Объявляем начало функции
                EXPORT  Reset_Handler                 	[WEAK]		; Делаем доступной для остальной части программы метку этой функции
																	; WEAK - говорит о том, что она может быть переобъявлена в другом месте проекта
					
				; Начало пользовательской программы
				B 		Init
                ENDP			


;######################################################################## 
;							Начало программы
;########################################################################
;
;	Подгружаем файл с объявлениями периферийных блоков
;
				GET 	stm32f051r8t6.asm
					
					
Init    		PROC

				; Включаем тактирование на Power Interface 
				LDR 	r0, =(RCC_APB1ENR)							; Записываем в R0 адрес регистра RCC + значение смещения параметра APB1ENR
				LDR 	r1, =(1 << 28)								; Ставим 28 байт в значение 1
				STR 	r1, [r0]									; Записываем по адресу [R0] значение из R1	

				; Включаем задержку для Flash = 1
				LDR 	r0, =(FLASH_ACR)							
				LDR 	r1, =(1)									; Ставим 0 байт в значение 1
				STR 	r1, [r0]

				; Включаем HSE
				LDR 	r0, =(RCC_CR)							
				LDR 	r1, [r0]	
				LDR 	r2, =(0x10000)	
				ORRS	r2, r2, r1
				STR		r2, [r0]
				
				B	.

				; Конец программы
				ENDP
					
;######################################################################## 
;							Конец программы
;########################################################################


;
;	Обработчики исключений с переходами на свой же адрес (бесконечный цикл)
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
; 	Объявление и инициализация пользовательского стека и кучи
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

					
				
				