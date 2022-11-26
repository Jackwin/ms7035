#!/usr/bin/python
# Cook_file.py is used to make conversion among different format files
import json


class FileCook(object):
    '''In the brd file, the useful contents start from 27th line'''
    __brd_start_line = 27
    pstxnet_net_list = {}
    brd_pin_net_list = {}

    def __init__(self, pstxnet_file, brd_file):
        self.brd_file = brd_file
        self.pstxnet_file = pstxnet_file

    '''
    Get the string in the quotes. 'CON3.J4' -> CON3.J4
    '''

    def __strip_quotes(self, name):
        if (len(name) > 1):
            ind1 = name.find("'")
            ind2 = name.find("'", ind1+1)
            if ind1 < 0 or ind2 < 0:
                return name
            return name[ind1+1:ind2]

    '''
    Parse the pstxnel.dat from CIS 
    '''

    def parse_pstxnet(self):
        with open(self.pstxnet_file) as file:
            f_ = file.readline().strip()
            while (True):
                if f_ != "NET_NAME" and f_ != "END.":
                    f_ = file.readline().strip()
                if f_ == "NET_NAME":
                    f_ = file.readline().strip()
                    netName = self.__strip_quotes(f_)
                    nodes = []
                    while (True):
                        f_ = file.readline().strip()
                        f_split = f_.split()
                        if f_split[0] == "NODE_NAME":
                            node = f_split[1] + "." + f_split[2]
                            nodes.append(node)
                        if f_ and (f_ == "NET_NAME" or f_ == "END."):
                            break
                    self.pstxnet_net_list[netName] = nodes
                    print(nodes)
                elif f_ == "END.":
                    break
            file.close()

    def parse_brd(self, brd_file):
        for line in brd_file.readlines()[self.__brd_start_line:]:
            self.brd_pin_net_list.append(line.strip().split())

    def save_to_json(self, source_file, json_file):
        with open(json_file, 'w') as f:
            json.dump(source_file, f, sort_keys=True, indent=4)
            f.close()

    def parse_pstxnet_to_json(self, json_file):
        print(" ---- parse pstxnet to json ------ ")
        self.parse_pstxnet()
       # print(self.pstxnet_net_list)
        self.save_to_json(self.pstxnet_net_list, json_file)


'''Parse the nets from orCAD CIS'''
