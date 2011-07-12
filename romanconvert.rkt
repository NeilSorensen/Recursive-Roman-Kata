#lang racket

(define roman-primitives (list (cons 1 #\I)
                               (cons 4 (list #\I #\V))
                               (cons 5 #\V)
                               (cons 9 (list #\I #\X))
                               (cons 10 #\X)
                               (cons 40 (list #\X #\L))
                               (cons 50 #\L)
                               (cons 90 (list #\X #\C))
                               (cons 100 #\C)
                               (cons 400 (list #\C #\D))
                               (cons 500 #\D)
                               (cons 900 (list #\C #\M))
                               (cons 1000 #\M)))

(define (convert-to-roman value)
  (if (zero? value)
  ""
  (list->string (convert-to-roman-rec value (reverse roman-primitives)))))

(define (convert-to-roman-rec value romans)
  (if (zero? value)
      '()
      (if (>= value (car (car romans)))
          (if (list? (cdr (car romans)))
              (append (cdr (car romans))
                      (convert-to-roman-rec (- value (car (car romans))) romans))    
              (append (list (cdr (car romans)))
                      (convert-to-roman-rec (- value (car (car romans))) romans)))
          (convert-to-roman-rec value (cdr romans)))))

(provide convert-to-roman)