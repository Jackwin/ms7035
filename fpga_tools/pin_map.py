from cmath import pi
import pandas as pd
import json

data_file="pin2pin-ms7035_COREBOARD-20211111.xlsx"
sheet_name = "z7035"
target_xdc="pin.xdc"
num_of_rows = 300
signal_file="ms7035.json"
connector_list = {"CON9", "PMOD"}

# header indicates the header location
# In pandas, use the first row as the header, here use the second as the header
data = pd.read_excel(data_file, index_col=[0], sheet_name=sheet_name, header=1, nrows=num_of_rows)
signal_pin_dict = data.set_index([" Signal Name"])['FPGA Pin Number'].to_dict()

print("Load the excel done")

print("=======================")

with open(target_xdc, 'w') as f:
    with open(signal_file,'r') as f_json:
        d = json.load(f_json)
        for connector in connector_list:
            f.write("##" + connector + '\n')
            for signal_item in d[connector]:
                if signal_item in signal_pin_dict.keys():
                    f.write("##" + signal_item + '\n')
                    f.write("set_property PACKAGE_PIN "+ signal_pin_dict[signal_item]+
                    "[get_ports {"+signal_item+"}]"+'\n')
        f.write("## IO constrain template\n")       
        f.write("## set_property IOSTANDARD LVCMOS25 [get_ports {}]\n")
        f_json.close()
    f.close()

print("Export the pin-map done\n")