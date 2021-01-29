from time import sleep
import os
import sys
from texttable import Texttable

ENTRANCE    = 'E'
RACK        = 'R'
JUN         = 'J'
STREET      = 'S'


class MAP:
    def __init__(self , Cell_X , Cell_Y ) -> None:
        self.Cell_X = Cell_X
        self.Cell_Y = Cell_Y
        self.cell()

    def lineMap(self) -> None:
        self.linemap = []
        pass

    def cell(self) :        
        # j   0   j         E - entrance    
        # 0   r   0         R - rack        
        # j   0   j         J - 4 way       
                
        self.abstract_cell =     [[JUN,      STREET,     JUN], 
                             [STREET,   RACK,       ENTRANCE],
                             [JUN,      STREET,     JUN]]
        
        return self.abstract_cell

    def cell_render(self,array):
        self.PATH_SIZE = 4
        self.Cell = []


        my_table = Texttable()
        if len(array) > 5:
            x = 5
        else:
            x = len(array)
        for w in range(x):
            my_table.add_rows([['No', 'q'], [array[w][0], array[w][1]]])
        z = (my_table.draw())
        table = z.split('\n')
        
        cell_x_size = 0
        cell_y_size = 0

        for x in self.abstract_cell[1]:

            if  x == STREET :
                cell_x_size += self.PATH_SIZE 
            if  x == RACK :
                cell_x_size += len(table[0])
            if  x == ENTRANCE :
                cell_x_size += 2*self.PATH_SIZE

        for Y in self.abstract_cell:
            y = Y[1]
            #print('y',y)
            if y == STREET:
                cell_y_size += self.PATH_SIZE
            if y == RACK:
                cell_y_size += len(table)
            if y == ENTRANCE:
                cell_y_size += 2*self.PATH_SIZE

        if self.abstract_cell[0][1] == ENTRANCE : 

        p1 = range(cell_x_size)
        p2 = range(cell_y_size)
        for y in p2:
            t = []
            for x in p1:
                t.append('.')
            self.Cell.append(t)

        # draw table
        for k in range(len(table)):
            self.Cell[k+4][4:4+len(table[k])] = table[k]

        # draw path
        for x in range(1,(len(self.Cell[0])-1)):
            self.Cell[1][x] = ' '
            self.Cell[2][x] = ' '
            self.Cell[len(self.Cell)-2][x] = ' '
            self.Cell[len(self.Cell)-3][x] = ' '

        for y in range(1, (len(self.Cell)-1)):
            self.Cell[y][1] = ' '
            self.Cell[y][2] = ' '

            self.Cell[y][len(self.Cell[0])-2] = ' '
            self.Cell[y][len(self.Cell[0])-3] = ' '



        def corner():
            pass

        return self.Cell 

    def map_print(self,array):

        for y in array:
            for x in y:
                print(f"{x}", end=' ')
            print()

    def cell_map():
        pass
        

my_map = MAP(3,3)
tem = my_map.cell_render([[2, 3], [3, 5], [2, 3], [2, 3], [2, 3]])
my_map.map_print(array=tem)
