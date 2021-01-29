from colour import *
from time import sleep


UP = 0
RIGHT = 1
DOWN = 2
LEFT = 3

colour = bcolors()

class AGV:
    def __init__(self,MAP) -> None:
        self.ANGLE = UP
        k = u'\u2588'
        N = f"{bcolors.WARNING}{k}{bcolors.OKGREEN}"
        self.N =N
        self.AGV = [[N, N], [N, N]]
        self.MAP = MAP 
        self.X = 1 
        self.Y = 1
        self.food_print()

    def food_print(self):
        N=self.N
        self.AGV = [[N, N], [N, N]]
        if self.ANGLE == UP:
            self.AGV[0][0] = f"{bcolors.WARNING}{'*'}{bcolors.OKGREEN}"
        elif self.ANGLE == RIGHT:
            self.AGV[0][1] = f"{bcolors.WARNING}{'*'}{bcolors.OKGREEN}"
        elif self.ANGLE == DOWN:
            self.AGV[1][1] = f"{bcolors.WARNING}{'*'}{bcolors.OKGREEN}"
        else :
            self.AGV[1][0] = f"{bcolors.WARNING}{'*'}{bcolors.OKGREEN}"
        
        

    def agv_print(self):
        self.MAP.Cell[self.Y][self.X] = self.AGV[0][0]
        self.MAP.Cell[self.Y][self.X+1] = self.AGV[0][1]
        self.MAP.Cell[self.Y+1][self.X] = self.AGV[1][0]
        self.MAP.Cell[self.Y+1][self.X+1] = self.AGV[1][1]



    def street(self):
        sleep(1)
        self.MAP.cls()
        if (self.Y>0) and (self.ANGLE == UP) and (self.MAP.Cell[self.Y-1][self.X] != '.')  :    # UP
            self.Y -= 1
        elif (self.X < len(self.MAP.Cell[0])) and (self.ANGLE == RIGHT) and (self.MAP.Cell[self.Y][self.X+1] != '.'): # RIGHT
            self.X +=1
        elif (self.X > 0 ) and (self.ANGLE == LEFT ) and (self.MAP.Cell[self.Y][self.X-1] != '.'): # LEFT
            self.X += 1
        elif (self.Y < len(self.MAP.Cell)) and (self.ANGLE == DOWN) and (self.MAP.Cell[self.Y+1][self.X] != '.'):  # DOWN  
            self.Y += 1

            
        ## map fresh
        self.MAP.cell_render([[2, 3], [3, 5], [2, 3], [2, 3], [2, 3]])
        self.agv_print()
        self.MAP.map_print()
        pass
