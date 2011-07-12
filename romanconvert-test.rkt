#lang racket

(require rackunit "romanconvert.rkt")

(check-equal? (convert-to-roman 0) "" "Test 0")
(check-equal? (convert-to-roman 1) "I" "Test 1")
(check-equal? (convert-to-roman 2) "II" "Test 2")
(check-equal? (convert-to-roman 4) "IV" "Test 4")
(check-equal? (convert-to-roman 5) "V" "Test 5")
(check-equal? (convert-to-roman 9) "IX" "Test 9")
(check-equal? (convert-to-roman 12) "XII" "Test 12")
(check-equal? (convert-to-roman 14) "XIV" "Test 14")
(check-equal? (convert-to-roman 99) "XCIX" "Test 99")
(check-equal? (convert-to-roman 1944) "MCMXLIV" "Test 1944")