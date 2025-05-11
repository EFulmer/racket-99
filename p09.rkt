#lang racket

; P09: Pack consecutive duplicates of list elements into sublists.
(define (my-pack l)
  (reverse (pack-helper l '())))

(define (pack-helper l acc)
  (if
   (null? l) acc
   (let*-values (
          [(fst) (first l)]
          [(run rest) (splitf-at l (first-equals? fst))]
          )
     (pack-helper rest (cons run acc))
     )
  )
  )

(define (first-equals? val)
  (lambda (fst) (equal? val fst)))
