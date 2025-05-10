#lang racket

; P02: Find the last but one box of a list.
(define (my-but-last list)
  (if
   (empty? (cddr list))
   (car list)
   (my-but-last (cdr list))))

(display (my-but-last '(a b c d)))