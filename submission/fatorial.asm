


        LD  N          
        JN  END        
        JZ  ONE        
        MM  TEMP       

        LV  1          
        MM  RES        

LOOP:   LD  TEMP       
        SB  UM         
        JZ  END        
        MM  TEMP       
        
        LD  RES        
        ML  TEMP       
        MM  RES        
        
        JP  LOOP       

ONE:    LV  1          
        MM  RES        
        JP  END        

END:    HM            


N:      K  0x100      
RES:    K  0x102      
TEMP:   K  0          
UM:     K  1          
