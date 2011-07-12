#lang racket

(define roman-primitives (list (cons 1 #\I)
                               (cons 5 #\V)
                               (cons 10 #\X)
                               (cons 50 #\L)
                               (cons 100 #\C)
                               (cons 500 #\D)
                               (cons 1000 #\M)))

(define (convert-to-roman value)
  "")

(provide convert-to-roman)