#lang racket

; P04: Find the number of elements of a list.
(define (my-length list)
  (define (go l acc)
    (cond
      [(null? l)                     acc]
      [else      (go (rest l) (+ 1 acc))]
      )
    )
  (go list 0))

(display (my-length '(a b c)))