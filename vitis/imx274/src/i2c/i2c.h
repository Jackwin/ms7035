#ifndef __I2C_H__
#define __I2C_H__

#include "xil_types.h"
#include "xiicps.h"

int I2cWriteReg8(XIicPs *instance_ptr, char iic_addr, char addr, char data);
char I2cReadReg8(XIicPs *instance_ptr, char iic_addr, char addr);
int I2cWriteReg16(XIicPs *instance_ptr, char iic_addr, unsigned short addr, char data);
char I2cReadReg16(XIicPs *instance_ptr, char iic_addr, unsigned short addr);
int I2cInit(XIicPs *iic_ptr,short device_id ,u32 iic_clk_rate);

#endif
