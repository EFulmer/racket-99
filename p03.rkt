#lang racket

; P03: Find the K'th element of a list, starting from 1.
(define (element-at list k)
  (if
   (= 1 k)
   (car list)
   (element-at (cdr list) (- k 1))
   )
  )

(display (element-at '(a b c d e) 3))