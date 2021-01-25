from time import sleep
import os


def cls():
    os.system('cls' if os.name == 'nt' else 'clear')

def test():
    message = 'hello'
    for i in range(len(message), 0, -1):
        cls()
        print (message[:i])
        sleep(1)

CELL_SIZE = 20
NUMBER_OF_CELL = 5
PATH_SIZE = 3

class MAP:
    def __init__(self):
        self.map = []
        for y in range(NUMBER_OF_CELL*CELL_SIZE):
            t = []
            for x in range(NUMBER_OF_CELL*CELL_SIZE):
                t.append('.')
            self.map.append(t)

    def print(self):
        for x in range(NUMBER_OF_CELL*CELL_SIZE):
            for y in range(NUMBER_OF_CELL*CELL_SIZE):
                print(self.map[x][y] , end=' ')
            print()

    def cell( self , X , Y ):
        # upper path
        for x in range( X*CELL_SIZE + PATH_SIZE, (X+1)*CELL_SIZE - PATH_SIZE):
            
            self.map[ Y*CELL_SIZE + PATH_SIZE][x] = '/'
            self.map[ (Y+1)*CELL_SIZE+1 - PATH_SIZE -1 ][x] = '/'

        # left right
        for y in range(Y*CELL_SIZE + PATH_SIZE, (Y+1)*CELL_SIZE - PATH_SIZE+1):

            self.map[y][X*CELL_SIZE + PATH_SIZE] = '/'
            self.map[y][(X+1)*CELL_SIZE+1 - PATH_SIZE-2] = '/'
    

    def all_cell(self):
        for y in range(NUMBER_OF_CELL):
            for x in range(NUMBER_OF_CELL):
                self.cell( Y = y, X = x)


    def agv_pack(self):
        print
    


my_map = MAP()
#my_map.print()
#sleep(3)
my_map.all_cell()

my_map.print()

