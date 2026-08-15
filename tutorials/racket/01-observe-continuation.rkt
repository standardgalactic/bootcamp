#lang racket

(define (observe label value)
  (printf "~a -> ~a\n" label value)
  value)

(define result
  (+ (observe 'left 2)
     (observe 'right 3)))

(displayln result)
(displayln "Question: what continuation was waiting at each observation?")
