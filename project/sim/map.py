from time import sleep
import os ,sys
from texttable import Texttable
from agv import *

DOUBLE_LEFT_TOP = u'\u2554'	
DOUBLE_VERTI_PIPE = u'\u2551'		
DOUBLE_LEFT_BOTTOM = u'\u255a'		
DOUBLE_CENTER = u'\u256c'
DOUBLE_RIGHT_TOP = u'\u2557'		
DOUBLE_RIGHT_BOTTOM = u'\u255d'	
DOUBLE_HORIZ_PIPE = u'\u2550'		
SINGLE_LEFT_TOP = u'\u250c'
SINGLE_VERTI_PIPE = u'\u2502'
SINGLE_LEFT_BOTTOM = u'\u2514'
SINGLE_RIGHT_TOP = u'\u2510'
SINGLE_RIGHT_BOTTOM = u'\u2518'
SINGLE_HORIZ_PIPE = u'\u2500'


class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'


def cls():
    os.system('cls' if os.name == 'nt' else 'clear')

def test():
    message = 'hello'
    for i in range(len(message), 0, -1):
        cls()
        print (message[:i])
        sleep(1)


k = f"{bcolors.WARNING}.{bcolors.OKGREEN}"

class MAP:
    def __init__(self, NUMBER_OF_CELL, CELL_SIZE, PATH_SIZE):
        self.NUMBER_OF_CELL = NUMBER_OF_CELL
        self.CELL_SIZE = CELL_SIZE
        self.PATH_SIZE = PATH_SIZE
        global test 
        test = 5
        self.map = []
        for y in range(self.NUMBER_OF_CELL*self.CELL_SIZE):
            t = []
            for x in range(self.NUMBER_OF_CELL*self.CELL_SIZE):
                t.append('.')
            self.map.append(t)

        self.agv_pack()
        

    def print(self):
        for y in range(self.NUMBER_OF_CELL*self.CELL_SIZE):
            for x in range( len(self.map[y]) ):
                print(f"{self.map[y][x]}" , end=' ')
            print()

    def cell( self , X , Y ):
        
        """
        # upper path
        for x in range( X*CELL_SIZE + PATH_SIZE, (X+1)*CELL_SIZE - PATH_SIZE):
            
            self.map[Y*CELL_SIZE + PATH_SIZE][x] = '*'
            self.map[(Y+1)*CELL_SIZE+1 - PATH_SIZE - 1][x] = '*'

        # left right
        for y in range(Y*CELL_SIZE + PATH_SIZE, (Y+1)*CELL_SIZE - PATH_SIZE+1):

            self.map[y][X*CELL_SIZE + PATH_SIZE] = '*'
            self.map[y][(X+1)*CELL_SIZE+1 - PATH_SIZE-2] = '*'

        """
        # upper
        for x in range(X*self.CELL_SIZE + self.PATH_SIZE, (X+1)*self.CELL_SIZE - self.PATH_SIZE):

            self.map[Y*self.CELL_SIZE + self.PATH_SIZE-1][x] = SINGLE_HORIZ_PIPE
            self.map[(Y+1)*self.CELL_SIZE+1 - self.PATH_SIZE][x] = SINGLE_HORIZ_PIPE

        for y in range(Y*self.CELL_SIZE + self.PATH_SIZE, (Y+1)*self.CELL_SIZE - self.PATH_SIZE+1):

            self.map[y][X*self.CELL_SIZE + self.PATH_SIZE-1] = SINGLE_VERTI_PIPE
            self.map[y][(X+1)*self.CELL_SIZE+1 - self.PATH_SIZE-1] = SINGLE_VERTI_PIPE
    
        #coners
        self.map[Y*self.CELL_SIZE + self.PATH_SIZE-1      ][X*self.CELL_SIZE + self.PATH_SIZE-1     ] = SINGLE_LEFT_TOP
        self.map[(Y+1)*self.CELL_SIZE - self.PATH_SIZE+1  ][X*self.CELL_SIZE + self.PATH_SIZE-1     ] = SINGLE_LEFT_BOTTOM
        self.map[Y*self.CELL_SIZE + self.PATH_SIZE-1      ][(X+1)*self.CELL_SIZE - self.PATH_SIZE   ] = SINGLE_RIGHT_TOP
        self.map[(Y+1)*self.CELL_SIZE - self.PATH_SIZE+1  ][(X+1)*self.CELL_SIZE - self.PATH_SIZE   ] = SINGLE_RIGHT_BOTTOM
        
        
        
    def cell_table(self , X , Y , array ):
        print(X,Y,array)
        t = Texttable()
        for w in range(len(array)):
            t.add_rows([['No', 'q'], [w,array[w]] ] )
        z = (t.draw())
        table =  z.split('\n')
        for k in range(len(table)):
            self.map[Y*self.CELL_SIZE + k +4][X*self.CELL_SIZE +4
                                                            : (X*self.CELL_SIZE + len(table[k]) +4)] = table[k]
            
        

    def all_cell(self):
        for y in range(self.NUMBER_OF_CELL):
            for x in range(self.NUMBER_OF_CELL):
                self.cell( Y = y, X = x)


    def agv_pack(self):
        PACKING_SIZE = 20
        t = []
        for y in range(PACKING_SIZE):
            t.append('.')
        
        for y in range(PACKING_SIZE):
            self.map[y].extend(t)

        






#my_map = MAP()
##my_map.print()
##sleep(3)
#my_map.all_cell()
#my_map.cell_table(3,3,[[5,78],[3,8]])
#my_map.cell_table(1, 4, [[5, 78], [3, 8]])
#my_map.agv_pack()
#
#my_map.print()


print(k)
