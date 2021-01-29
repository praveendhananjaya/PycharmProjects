from map import *
from agv import *

my_map = MAP(Cell_X= 1 , Cell_Y= 1 )
my_map.lineMap()
#my_map = MAP(3,3)
tem = my_map.cell_render([[2, 3], [3, 5], [2, 3], [2, 3], [2, 3]])
my_map.map_print()

my_agv = AGV(MAP= my_map)
my_agv.ANGLE = DOWN
my_agv.food_print()
my_agv.street()
my_agv.street()
my_agv.street()
my_agv.street()
