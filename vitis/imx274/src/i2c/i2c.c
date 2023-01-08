#include "xil_printf.h"
#include "i2c.h"

int I2cWriteReg8(XIicPs *instance_ptr, char iic_addr, char addr, char data)
{
	int status;
	u8 send_buffer[2];

	send_buffer[0] = addr;
	send_buffer[1] = data;
	status = XIicPs_MasterSendPolled(instance_ptr, send_buffer, 2, iic_addr);
	while (XIicPs_BusIsBusy(instance_ptr));

	return status;
}

char I2cReadReg8(XIicPs *instance_ptr, char iic_addr, char addr)
{
	u8 wr_data, rd_data;

	wr_data = addr;
	XIicPs_MasterSendPolled(instance_ptr, &wr_data, 1, iic_addr);
	XIicPs_MasterRecvPolled(instance_ptr, &rd_data, 1, iic_addr);
	while (XIicPs_BusIsBusy(instance_ptr));
	return rd_data;
}

int I2cWriteReg16(XIicPs *instance_ptr, char iic_addr, unsigned short addr, char data)
{
	int status;
	u8 send_buffer[3];

	send_buffer[0] = addr>>8;
	send_buffer[1] = addr;
	send_buffer[2] = data;
	status = XIicPs_MasterSendPolled(instance_ptr, send_buffer, 3, iic_addr);
	while (XIicPs_BusIsBusy(instance_ptr));

	return status;
}

char I2cReadReg16(XIicPs *instance_ptr, char iic_addr, unsigned short addr)
{
	u8 rd_data;
	u8 send_buffer[2];

	send_buffer[0] = addr>>8;
	send_buffer[1] = addr;
	XIicPs_MasterSendPolled(instance_ptr, send_buffer, 2, iic_addr);
	XIicPs_MasterRecvPolled(instance_ptr, &rd_data, 1, iic_addr);
	while (XIicPs_BusIsBusy(instance_ptr));
	return rd_data;
}



int I2cInit(XIicPs *iic_ptr,short device_id ,u32 iic_clk_rate)
{
	XIicPs_Config *Config;
	int status;

	Config = XIicPs_LookupConfig(device_id);
	if (NULL == Config) {
		xil_printf("XIicPs_LookupConfig failure\r\n");
		return XST_FAILURE;
	}

	status = XIicPs_CfgInitialize(iic_ptr, Config, Config->BaseAddress);
	if (status != XST_SUCCESS) {
		xil_printf("XIicPs_CfgInitialize failure\r\n");
		return XST_FAILURE;
	}
	XIicPs_SetSClk(iic_ptr, iic_clk_rate);
	while (XIicPs_BusIsBusy(iic_ptr));	// Wait
	return XST_SUCCESS;
}



