; Diego Souza Lima Marques - TIA: 32039921 
; Desafio 09 - Transcrição de RNA - Scheme

; Referências consultadas: 
; - cons, newline, '( ) -> https://rodrigorgs.github.io/aulas/mata56/aula08-lisp
; - eq? -> https://stackoverflow.com/questions/44191584/scheme-character-comparison

; Função de transcrição de DNA para mRNA
; Compara o elemento atual da lista (car) com as
; possibilidades de nucleotídeos: G, C, T, A (U).
; eq? retorna comparação de objetos.

(define (transcricao simbolo)
  (if (eq? simbolo 'G) 'C  
  (if (eq? simbolo 'C) 'G
  (if (eq? simbolo 'T) 'A
  (if (eq? simbolo 'A) 'U ))))
)

; Função recursiva para adicionar a transcrição de cada elemento 
; do DNA ao RNA e passar para o próximo elemento da lista.
; A adição é feita por meio de 'cons', que adiciona ao começo da lista.
; '( ) representa que acabou, pois chegou em null.

(define (mRNA DNA)
  (if (null? DNA) '( ) (cons (transcricao (car DNA)) (mRNA (cdr DNA))))
)

; Teste com DNA = GGTAC --> mRNA = CCAUG
(define exemplo '(G G T A C))
(display exemplo)
(newline)
(display (mRNA exemplo))
