#lang racket

; P11: Modified run-length encoding
(define (encode-modified lst)
  (map length-and-val (my-pack lst)))

; TODO: figure out how to import p09.rkt

(define (length-and-val a-list)
  (if (> (length a-list) 1)
      (cons
       (length a-list)
       (list (first a-list)))
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

(displayln (encode-modified '(a a a a b c c a a d e e e e)))
