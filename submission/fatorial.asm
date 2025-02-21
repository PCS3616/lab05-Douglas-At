
        LV  1         
        MM  RES       
        LD  N         
        JN  END       
        JZ  END       
        MM  TEMP      

LOOP:   LD  RES       
        ML  TEMP      
        MM  RES       
        LD  TEMP      
        SB  UM        
        JZ  END       
        MM  TEMP      
        JP  LOOP      

END:    HM           

; Dados e constantes
N:      K  0x100     
RES:    K  0x102     
TEMP:   K  0         
UM:     K  1         
