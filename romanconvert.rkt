#lang racket

(define roman-primitives (list (cons 1 #\I)
                               (cons 5 #\V)
                               (cons 10 #\X)
                               (cons 50 #\L)
                               (cons 100 #\C)
                               (cons 500 #\D)
                               (cons 1000 #\M)))

(define (convert-to-roman value)
  (if (zero? value)
  ""
  (list->string (convert-to-roman-rec value))))

(define (convert-to-roman-rec value)
  (if (zero? value)
      '()
      (append (list #\I) (convert-to-roman-rec (- value 1)))
      ))

(provide convert-to-roman)