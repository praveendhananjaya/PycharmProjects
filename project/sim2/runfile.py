from cell import *
from agv import *

my_map = CELL()

#my_map = MAP(3,3)
tem = my_map.cell_render([[2, 3], [3, 5], [2, 3], [2, 3], [2, 3]])
my_map.cell_print()

my_agv = AGV(MAP= my_map , LINE_MAP = [[my_map.abstract_cell]] )
destination = [0,0] 
my_agv.go_to(dst = destination)
