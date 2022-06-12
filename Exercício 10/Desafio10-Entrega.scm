; Diego Souza Lima Marques - TIA: 32039921 
; Desafio 10 - Números perfeitos - Scheme

(define (listarDivisores listaD dividendo divisor)
  (if (= (mod dividendo divisor) 0) cons divisor listaD)
)

(define (listarCandidatos listaC temp dividendo)
  (if (= temp dividendo) '( ) (cons temp (listarCandidatos listaC (+ temp 1) dividendo)))
)

(define (realizar listaC listaD dividendo divisor)
  (if (null? listaC) '1 (listarDivisores listaD dividendo (cdr listaC) ))
)

(define (aliquota listaD atual)
  (if (null? listaD) 0 (+ atual (aliquota listaD (cdr listaD))))
)

(define (classificar aliquota dividendo)
  (if (= aliquota dividendo) "Perfeito" (if (> aliquota dividendo) "Abundante" (if (< aliquota dividendo) "Deficiente")))
)

(define exemplo1 (listarCandidatos '( ) 1 6))
(display exemplo1)
(newline)
(define exemplo2 (realizar exemplo1 '( ) 6 1))
(display exemplo2)
(newline)
(define soma (aliquota exemplo2 1))
(display soma)
(newline)
(display classificar soma 6)
