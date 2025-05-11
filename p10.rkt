#lang racket

; P10: Run-length encoding of a list
(define (encode a-list)
  (map length-and-val (my-pack a-list)))


; TODO: figure out how to import p09.rkt

(define (length-and-val a-list)
  (cons
   (length a-list)
   (list (first a-list))))

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

(display (encode '(a a a a b c c a a d e e e e)))