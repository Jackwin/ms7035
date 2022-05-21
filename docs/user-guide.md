## Brief Introduction



The MS7035 board consists of one SOM(system on module) board and a CAD (carry-board) board, which can cover a wide range of industrial applications or empower the geeks to explore novel designs.

In addition to the zynq-7035, the whole board includes DDR3, EMMC, and QSPI-Flash on the SOM, and a rich set of peripherals , such as,SD card, HDMI, MIPI interface, USB 2.0, Gigabit Ethernet and user IOs，on the CAD.

**Feature**

1. ZYNQ Z-7035
   - 667MHz dual-core Cortex-A9 processor
   - 28nm Kintex-7 FPGA pogrammable logic
2. Memory
     - 1GB DDR3 with 32-bit bus on PS 
     - 2x 256bit QSPI flash
     - 16GB EMMC
3. High Speed Interface
     - PCIe 2.0 x4
     - 4x SFP 
     - Gigabit Ethernet PHY
     - 4 USB 2.0 ports
4. Video peripherals 
     - HDMI out
     - MIPI CSI & DSI Interface
5. Switches, Push-buttons, and LEDs
   - 3 push-buttons
   - 4 slide switches
   - 4 LEDs

6. User Connector
   - 1xPMOD
   - 64 user IO connector

## Hardware Components
### SOM-board
### Overview 
|  | parts | Parameter |
| ------ | ------ | ------ |
| FPGA |  XC7Z035-FFG676-2|  |
| DDR3 |  MT41K256M16TW-107 | 1GB |
| emmc | THGBMHG7C1LBAIL | 16GB |
| QSPI-Flash | W25Q256FVEI | 2x256bit |
| connector |  AXK5A2147YG  |  4x|

#### FPGA

The Zynq7035 family is based on the Xilinx SoC architecture, a heterogeneous system containing an ARM A9 processor and the Kinex-7 equivalent FPGA logics. High speed buses bridge the communication between these two parts, such as 4 general-purpose AXI ports and 4 high-speed AXI ports，shown in figure-1.

<div align=center><img width="400" height="400" src="./pics/zynq-mp-core-dual.png" /></div>
<div align=center>Figure-1 Zynq SOC block diagram</div>



[Zynq-7000 SoC Product Guide](https://docs.xilinx.com/v/u/en-US/zynq-7000-product-selection-guide)

[DS191-Z-7035-DC and AC Switching Characteristics](https://www.xilinx.com/content/dam/xilinx/support/documents/data_sheets/ds191-XC7Z030-XC7Z045-data-sheet.pdf)

[UG685-Zynq-7000-SoC Packaging and Pinout](https://docs.xilinx.com/v/u/en-US/ug865-Zynq-7000-Pkg-Pinout)

Figure-2 illustrates the banks inside the chip for the XC7Z035 series , but For the **XCZXC7Z035-FFG676-2**, only the followings are bonded.

- HR  bank bonded: bank12, bank13,

- HP bank bonded: bank33, bank 34, bank 35

- GTX bonded: Quads 111, Quads 112 

<center><img src=".\pics\7z035-banks.png" style="zoom:50%;" /></center>

<center> Figure-2: HR and HP banks in ZC7035</center>

Zynq IO banks are designated as either High Performance (HP) or High Density (HD). HP, as its name infers, is where your highest speed IO will be connected, with the VCCO raning from 1.2V to 1.8V and being limited to 1.8V . HD is for general purpose use, providing voltage support from 1.2V to 3.3V and can support a maximum VCCO of 3.3V.

#### DDR3
#### emmc
#### QSPI
### Carry-board
|  | parts | Parameter |
| ------ | ------ | ------ |
| PCIe |  | PCIe 2.0x4  |
|SFP ||4x|
|USB 3.0| FT601Q|
|HDMI Out|ADV7511|
|USB 2.0||4x|
|Ethernet|KSZ9031RNX|1x|
|PMOD|||
|User IO||64pin|
|Push Botton||2x|
|Switch Botton||4x|
|LED||4x|
|BOOT option|||


#### USB3.0
user guide
vivado design
#### SFP
#### PCIe
#### JTAG
#### HDMI
#### SD
#### MIPI
#### LED
#### Push Button
#### Switch Button
#### UART
#### Clock 
#### User IO

## Developer Reference
### pin map
### constrain files