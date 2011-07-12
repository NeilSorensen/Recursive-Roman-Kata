#lang racket

(require rackunit "romanconvert.rkt")

(check-equal? (convert-to-roman 0) "" "Test 0")