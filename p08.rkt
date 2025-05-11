#lang racket

; P08: Eliminate consecutive duplicates of list elements.
(define (compress l)
  (define (go cur acc x)
    (cond
      [(null? x)
       (if (equal? cur (first acc))
           (reverse acc)
           (reverse (cons cur acc)))]
      [(equal? (first x) cur)
       (go cur acc (rest x))]
      [else
       (go (first x) (cons cur acc) (rest x))]
      )
    )
  (go (car l) '() l))