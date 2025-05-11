#lang racket

; P07: Flatten an arbitrarily nested list structure.
(define (my-flatten l)
  (cond
    [(null? l)
     l]
    [(list? (first l))
     (append (my-flatten (first l)) (my-flatten (rest l)))]
    [else
     (cons (first l) (my-flatten (rest l)))]))

(define my-list '(a (b (c d) e)))
(my-flatten my-list)