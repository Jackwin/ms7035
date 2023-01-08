#ifndef __IMX274_H__
#define __IMX274_H__
#include "../i2c/i2c.h"
#include "imx274.h"
#include "imx274_reg.h"

void Imx274Init(XIicPs *instance_ptr) {
  I2cWriteReg16(instance_ptr, IMX274_IIC_ADDR, 0x3000, 0x12);
  for (int i = 0; i < sizeof(imx274_start_1) / sizeof(imx274_reg); i = i + 2){
    int status = I2cWriteReg16(instance_ptr, IMX274_IIC_ADDR, imx274_start_1[i],
                  imx274_start_1[i + 1]);  // standby control
    printf("imx274_start_1[%d] is %x, imx274_start_1[%d] is %x\n\r",i, imx274_start_1[i], i, imx274_start_1[i+1]);
    
    if (status != XST_SUCCESS){
      printf("Imx274 init failed.\n");
    }
    
  }


  for (int i = 0; i < sizeof(imx274_start_2) / sizeof(imx274_reg); i = i + 2) {
    I2cWriteReg16(instance_ptr, IMX274_IIC_ADDR, imx274_start_2[i],
                  imx274_start_2[i + 1]);
  }

  for (int i = 0; i < sizeof(imx274_mode3_1920x1080_raw10) / sizeof(imx274_reg);
       i = i + 2) {
    I2cWriteReg16(instance_ptr, IMX274_IIC_ADDR,
                  imx274_mode3_1920x1080_raw10[i],
                  imx274_mode3_1920x1080_raw10[i + 1]);
  }

  I2cWriteReg16(instance_ptr, IMX274_IIC_ADDR, 0x3000, 0x00);
  // use mipi interface
  I2cWriteReg16(instance_ptr, IMX274_IIC_ADDR, 0x303e, 0x02);
  // master mode start
  I2cWriteReg16(instance_ptr, IMX274_IIC_ADDR, 0x30f4, 0x00);
  // bit[1:0] ->using XHS and XVS output
  I2cWriteReg16(instance_ptr, IMX274_IIC_ADDR, 0x3018, 0xa2);
  // analog gain 
  I2cWriteReg16(instance_ptr, IMX274_IIC_ADDR, 0x300b, 0x7);


}
int Imx274Read(XIicPs *instance_ptr, u16 reg_addr, u8 *read_data){
  *read_data = I2cReadReg16(instance_ptr, IMX274_IIC_ADDR, reg_addr);
  return 1;
}
void Imx274Reset() {}

void Imx274SetSensorMode(uint8_t mode);

#endif
