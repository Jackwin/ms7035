#!/usr/bin/python
import os
import file_cook as cook

pstxnet_file = "./ms7z100-netlist/pstxnet.dat"
brd_file = "./ms7z100/FPGA-11-22.txt"
json_file = "pin.json"
json_file_test = "pin_test.json"

file_cook = cook.FileCook(pstxnet_file, brd_file)
file_cook.parse_pstxnet_to_json(json_file)
file_cook.rule_check(json_file_test)
