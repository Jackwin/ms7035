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

#include <stdio.h>

#include "i2c/i2c.h"
#include "imx274/imx274.h"
#include "platform.h"
#include "vdma.h"
#include "xiicps.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "vdma.h"

#define VGA_VDMA_ID XPAR_AXIVDMA_0_DEVICE_ID

#ifdef P1080
#define HORSIZE 1920*3
#define VERSIZE 1080
#else
#define HORSIZE 1280*3
#define VERSIZE 720
#endif

XIicPs ps_i2c0;

int main() {
  XAxiVdma_Config *vdmaConfig;
  XAxiVdma vdma;

  init_platform();

  print("Hello World\n\r");
  print("Successfully ran Hello World application\n\r");

  int status = I2cInit(&ps_i2c0, XPAR_XIICPS_0_DEVICE_ID, 100000);
  if (status != XST_SUCCESS) {
    printf("IIC init failed.\n");
  }

  vdmaConfig = XAxiVdma_LookupConfig(VGA_VDMA_ID);
  if (!vdmaConfig) {
    xil_printf("No video DMA found for ID %d\r\n", VGA_VDMA_ID);
  }
  status = XAxiVdma_CfgInitialize(&vdma, vdmaConfig, vdmaConfig->BaseAddress);
  if (status != XST_SUCCESS) {
    xil_printf("VDMA Configuration Initialization failed %d\r\n", status);

  } /* Start Sensor Vdma */
  //vdma_write_init(XPAR_AXIVDMA_0_DEVICE_ID, HORSIZE, VERSIZE, 1920*3,
  //                (unsigned int)dispCtrl.framePtr[dispCtrl.curFrame]);
  vdma_write_init(XPAR_AXIVDMA_0_DEVICE_ID, HORSIZE, VERSIZE, 1920*3,
                  0x0);

  char read_data[3];
  Imx274Init(&ps_i2c0);
  u16 data = Imx274Read(&ps_i2c0, 0x3129, &read_data[0]);
  printf("The read data from 0x3129 is %x.\n", read_data[0]);
  Imx274Read(&ps_i2c0, 0x3AA2, &read_data[1]);
  printf("The read data from 0x3AA2 is %x.\n", read_data[1]);
  Imx274Read(&ps_i2c0, 0x303e, &read_data[2]);
  printf("The read data from 0x303e is %x.\n", read_data[2]);
  print("Hello World......\n\r");

  cleanup_platform();
  return 0;
}
