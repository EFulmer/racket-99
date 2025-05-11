#lang racket

; P06: find out whether a list is a palindrome
(define (is-palindrome? l)
  (equal? l (reverse l)))

(display (is-palindrome? '(x a m a x)))