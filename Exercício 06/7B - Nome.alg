# Diego Souza Lima Marques - TIA: 32039921 #
# Atividade 7.B - Passagem por nome - Linguagem Algol #

INT n;
BEGIN
    PROC p = (REF INT k) VOID:
    # parâmetro por nome #
    BEGIN
       print(k);
       n := n + 10;
       print(k);
       n := n + 5;
       print(k)
    END;
    n := 0;
    n := n + 1;
    p(n)
END