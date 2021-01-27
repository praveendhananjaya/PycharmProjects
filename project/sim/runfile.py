from schedule import *
from list_gee import *
import time
import random
from map import *
from agv import *


AGV = 5
AGV_SIZE = 9
ID_MAX = 5
Max_PIP = 5
orders = 10 

# map 
CELL_SIZE = 20
RACK = 5
PATH_SIZE = AGV

my_map = MAP(CELL_SIZE=CELL_SIZE, NUMBER_OF_CELL=RACK, PATH_SIZE=PATH_SIZE)
#my_map.agv_init_(5)

# shedule setup
my_shedule = shedule(number_of_agv=AGV, agv_size=AGV_SIZE,
                     number_of_rack=RACK, racksize=ID_MAX, pipeline = Max_PIP )

# rack iteam input 
for y in range( RACK ):
    for x in range(RACK):
        tem = rack_detail(ID_MAX=ID_MAX)
        my_shedule.rack__init__(X=x, Y=y, iteam_list= tem )
        my_map.cell_table(X=x , Y= y , array= tem )


my_map.print()

my_agv_park = Agv_park(TOTAL_AGV= 5, map = my_map )

my_map.print()

print('\n')


for i in range(orders):
    #print(customer_order_details(5,  50 ))
    x = customer_order_details( ID_MAX = ID_MAX , size = 50 )
    print("my oder",x)
    my_shedule.new_oderder(x)


for x in range(5):
    my_agv = Agv( ID= x , map=my_map)


"""
x = random_iteam_list()
print("iteam list  ", x)
print('\n')
print(my_shedule.new_oderder(x))

time.sleep(3)
print(my_shedule.release_agv(4))
"""
