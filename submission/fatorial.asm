LV 100      ; Carrega o endereço do número N
LD 100      ; AC = N (Lê o valor armazenado em 0x100)
JZ FIM      ; Se N == 0, vai para FIM
LV 1        ; AC = 1 (Inicializa resultado)
MM 101      ; Armazena resultado temporário em 0x101 (resultado = 1)

LOOP:
    LD 101  ; Carrega resultado atual
    ML 100  ; Multiplica por N (AC = AC * N)
    MM 101  ; Salva resultado em 0x101
    LD 100  ; Carrega N
    SB 1    ; Subtrai 1 (N = N - 1)
    MM 100  ; Salva N atualizado
    JN FIM  ; Se N < 0, termina (evita multiplicação errada quando chega a 1)
    JP LOOP ; Continua o loop

FIM:
    LD 101  ; Carrega resultado final
    MM 102  ; Salva no endereço 0x102
    HM      ; Finaliza o programa
