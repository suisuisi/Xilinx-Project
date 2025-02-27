/*
 * Copyright (c) 2009-2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

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

#include <stdio.h>
#include "platform.h"

#include "fmc_imageon_vita_passthrough.h"
fmc_imageon_vita_passthrough_t demo1;
fmc_imageon_vita_passthrough_t demo2;

//void print(char *str);
void print(const char *str);

int main()
{
   init_platform();

   print("Hello World\n\r");

   while (1)
   {
      demo1.uBaseAddr_IIC_FmcImageon = XPAR_FMC_IMAGEON_IIC_0_BASEADDR;
      demo1.uBaseAddr_VITA_Receiver = XPAR_FMC1_IMAGEON_VITA_COLOR_FMC_IMAGEON_VITA_RECEIVER_0_S00_AXI_BASEADDR;
      demo1.uDeviceId_VTC_HdmioGenerator = XPAR_FMC1_IMAGEON_HDMIO_RGB_V_TC_0_DEVICE_ID;
      demo1.uBaseAddr_DPC = XPAR_DPC_0_BASEADDR;
      demo1.uBaseAddr_CFA = XPAR_CFA_0_BASEADDR;
      demo1.bVerbose = 0;
      fmc_imageon_vita_passthrough_init( &demo1 );

      demo2.uBaseAddr_IIC_FmcImageon = XPAR_FMC_IMAGEON_IIC_1_BASEADDR;
      demo2.uBaseAddr_VITA_Receiver = XPAR_FMC2_IMAGEON_VITA_COLOR_FMC_IMAGEON_VITA_RECEIVER_0_S00_AXI_BASEADDR;
      demo2.uDeviceId_VTC_HdmioGenerator = XPAR_FMC2_IMAGEON_HDMIO_RGB_V_TC_0_DEVICE_ID;
      demo2.uBaseAddr_DPC = XPAR_DPC_1_BASEADDR;
      demo2.uBaseAddr_CFA = XPAR_CFA_1_BASEADDR;
      demo2.bVerbose = 0;
      fmc_imageon_vita_passthrough_init( &demo2 );

      xil_printf( "\n\rPress ENTER to re-start ...\n\r" );
      getchar();
   }

   return 0;
}
