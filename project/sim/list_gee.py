import random
from math import ceil

TOTAL_RACK_SIZE = 200
WARE_HOUSE_SIZE = 5000


RACK = int(ceil(WARE_HOUSE_SIZE / TOTAL_RACK_SIZE))


def random_distribution(ID_MAX):
    Single_rack = []
    for x in range(TOTAL_RACK_SIZE):
        Single_rack.append(random.randint(0,ID_MAX-1))

    return Single_rack

def set_value( ID_MAX , list  ):
    rack_data = []
    for x in range(ID_MAX):
        rack_data.append(0)

    for y in list :
        rack_data[y] += 1 

    return rack_data



## make 1 random rack 
def rack_detail(ID_MAX):
    x = random_distribution(ID_MAX)
    return set_value(ID_MAX = ID_MAX , list= x )


def signle_random_customer_order(order_size,ID_MAX):
    order = []
    for i in range(order_size):
        order.append(random.randint(0,ID_MAX-1))

    return order


## make one customer order
def customer_order_details(ID_MAX , size ):
    x = signle_random_customer_order(ID_MAX= ID_MAX , order_size= size )
    return set_value(ID_MAX= ID_MAX , list= x )






        
