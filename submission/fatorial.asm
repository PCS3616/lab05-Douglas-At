    LD  UM         
    MM  RES        

LOOP:
    LD  N          
    JZ  FIM        

    MP  RES        
    MM  RES        

    LD  N          
    SB  UM         
    MM  N          

    JUMP LOOP      

FIM:
    HM  /000       

UM:   K   /0001    
N:    K   /0005    
RES:  K   /0000    
