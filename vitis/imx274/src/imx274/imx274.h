#ifndef __IMX274_H__
#define __IMX274_H__
#include "imx274_reg.h"
#include "xiicps.h"

void Imx274Init(XIicPs *instance_ptr);

void Imx274Reset();
int Imx274Read(XIicPs *instance_ptr, u16 reg_addr, u8 *read_data);
void Imx274SetSensorMode(u8 mode);
uint8_t Imx274GetSensorMode();

#endif
