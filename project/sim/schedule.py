import random
import time
from math import ceil



class shedule:
    def __init__(self, number_of_agv, agv_size, number_of_rack, racksize, pipeline):
        
        self.free_agv = range(number_of_agv)
        self.rack = range(number_of_rack)
        self.rack_size = racksize
        self.rack_iteam = []
        self.pipeline = pipeline


        for x in range(number_of_rack):
            self.rack_iteam.append([])

            
        #print(self.rack_iteam)
        self.size = agv_size
        self.row_oders = []

    def agv_list_fix(self, agv_list):
        self.free_agv = list(set(self.free_agv)-set(agv_list))
        
    def release_agv(self,agv_id):
        self.free_agv.append(agv_id)
        return self.order_process()

    def agv_randomness(self,new_assign_agv):
        return random.sample(self.free_agv, new_assign_agv)

    def new_oderder(self,order):
        self.row_oders.extend(order)
        return self.order_process()

    def order_process(self):
        new_assign_agv = int(ceil(len(self.row_oders)/self.size))
        if len(self.free_agv) < new_assign_agv:
            new_assign_agv = len(self.free_agv)
        print("number of agv = ",new_assign_agv,"   free =", self.free_agv)
        agv_list = self.agv_randomness(new_assign_agv)
        self.agv_list_fix( agv_list)

        return agv_list

    def rack__init__(self,rack_id,iteam_list):
        self.rack_iteam[rack_id] = iteam_list
        #print(self.rack_iteam)
        #pass




