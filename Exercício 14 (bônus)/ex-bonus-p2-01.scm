; Diego Souza Lima Marques - TIA: 32039921
; Paradigmas de Linguagens de Programação - 05D
; Exercício 01 - Bônus

(define (pot a b)
	(if (= 0 b) 1 (* a (pot a (- b 1)))))

(define (fat n)
	(if (= 0 n) 1 (* n (fat (- n 1)))))

(define PI 3.1415926)

(define (grausrad x) (/ (* x PI) 180))

(define (senohaux xrad n)
  (if (= n 0) xrad (+ (/ (pot xrad (+ (* n 2) 1)) (fat (+ (* n 2) 1))) (senohaux xrad (- n 1)))))

; Testes realizados:
; - (grausrad x)
; (grausrad 180) => 3.14151926
; (grausrad 360) => 6.2831852
; - (senohaux xrad n)
; (senohaux 2 10) => 3.62686040784...
; (senohaux 3 10) => 10.0178749274...
; Verificação feita em: https://www.solumaths.com/pt/calculadora/calcular/sh