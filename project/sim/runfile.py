from schedule import *
from list_gee import *
import time
import random

AGV = 5
AGV_SIZE = 9

ID_MAX = 10
Max_PIP = 5

orders = 10 


# shedule setup
my_shedule = shedule(number_of_agv=AGV, agv_size=AGV_SIZE,
                     number_of_rack=RACK, racksize=ID_MAX, pipeline = Max_PIP )

# rack iteam input 
for i in range( RACK ):
    my_shedule.rack__init__(i, rack_detail(ID_MAX=ID_MAX) )


print("All rack data print : " ,  my_shedule.rack_iteam )

print('\n')


for i in range(orders):
    #print(customer_order_details(5,  50 ))
    x = customer_order_details( ID_MAX = ID_MAX , size = 50 )
    print("my oder",x)
    my_shedule.new_oderder(x)




"""
x = random_iteam_list()
print("iteam list  ", x)
print('\n')
print(my_shedule.new_oderder(x))

time.sleep(3)
print(my_shedule.release_agv(4))
"""
