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
  (list->string (convert-to-roman-rec value (reverse roman-primitives)))))

(define (convert-to-roman-rec value romans)
  (if (zero? value)
      '()
      (if (>= value (car (car romans)))
          (append (list (cdr (car romans)))
                  (convert-to-roman-rec (- value (car (car romans))) romans))
          (convert-to-roman-rec value (cdr romans)))))

(provide convert-to-roman)