GD    /000
MM    AUXX
GD    /000
GD    /000
MM    AUXY
LD    AUXX
SB    CONST_3030
MM    VALX
LD    AUXY
SB    CONST_3030
MM    VALY
LD    VALX
AD    VALY
MM    SOMA
LD    SOMA
MM    TEMP_VAR

LIMPA_LOOP   LD    TEMP_VAR
SB    CONST_0010
JN    LIMPA_FIM
MM    TEMP_VAR
JP    LIMPA_LOOP

LIMPA_FIM   LD    TEMP_VAR
SB    CONST_000A
JN    SEM_CARRY
LD    SOMA
SB    CONST_000A
AD    CONST_0100
MM    SOMA

SEM_CARRY  LD    SOMA
AD    CONST_3030
MM    RESULTADO
LD    RESULTADO
PD    /100
HM    FIM

VALX         K   /0000
VALY         K   /0000
SOMA         K   /0000
RESULTADO    K   /0000
AUXX         K   /0000
AUXY         K   /0000
TEMP_VAR     K   /0000
CONST_3030   K   /3030
CONST_000A   K   /000A
CONST_0100   K   /0100
CONST_0010   K   /0010
FIM          K   /0000
