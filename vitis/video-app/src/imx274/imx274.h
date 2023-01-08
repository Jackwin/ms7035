#ifndef __IMX274_H__
#define __IMX274_H__

void Imx274Init();

void Imx274Reset();

void Imx274SetSensorMode(uint8_t mode);
uint8_t Imx274GetSensorMode();
char Imx274Read(XIicPs *instance_ptr, u16 reg_addr);
#endif