#lang racket

; P01: Find the last box of a list.
(define (my-last list)
  ; NOTE: this assumes a nonempty list is passed as a parameter.
  (if
   (empty? (rest list))
   (car list)
   (my-last (cdr list))))

(display (my-last '(a b c d)))