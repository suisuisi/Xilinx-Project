/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "xparameters.h"
#include "xgpio.h"
#include <stdio.h>
#include <stdlib.h>

#define DELAY_TIME 10000000

int right(int);
int left(int);
void delay(int);

int main(int argc, char *argv[])
{
	XGpio led_gpio;              /* LED Instance */

	/* Initialize LED GPIO settings */
	XGpio_Initialize(&led_gpio, XPAR_AXI_GPIO_0_DEVICE_ID);

	/* Set Direction, 0 output, 1 input */
	XGpio_SetDataDirection(&led_gpio, 1, 0);

	/* Output something via UART1, 115200 baudrate */
	printf("Start to blink led_gpio !!!\n\r");



	char led_value = 0x01;   /* default led_gpio value */
	char direction = 0;

	delay(DELAY_TIME);
	while(1) {
		printf("led_gpio value set to 0x%X\n\r", led_value);

		/* Set GPIO Channel 1 value. */
		XGpio_DiscreteWrite(&led_gpio, 1 , led_value);

		/* sleep and change led_gpio value */
		delay(DELAY_TIME);

		if(led_value & 0x08)
			direction = 1;
		else if(led_value & 0x01)
			direction = 0;

		if(direction)
			led_value = right(led_value);
		else
			led_value = left(led_value);
	}

	return 0;
}

int right(int led)
{
	if(led & 0x01)
		led &= 0x08;
	else
		led >>= 1;

	return led;
}

int left(int led)
{
	if(led & 0x08)
		led &= 0x01;
	else
		led <<= 1;

	return led;
}

void delay (int simple_delay)
{
	volatile int i = 0;
	for (i = 0; i < simple_delay; i++);
}
