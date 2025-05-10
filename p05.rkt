#lang racket

; P05: Reverse a list.
(define (my-reverse list) (foldl cons '() list))

(display (my-reverse '(5 4 3 2 1 0)))