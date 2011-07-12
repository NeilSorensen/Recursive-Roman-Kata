#lang racket

(require rackunit "romanconvert.rkt")

(check-equal? (convert-to-roman 0) "" "Test 0")
(check-equal? (convert-to-roman 1) "I" "Test 1")