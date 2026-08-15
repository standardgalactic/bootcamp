#lang racket

(struct proposal (value evidence) #:transparent)
(struct accepted (value) #:transparent)
(struct refused (proposal reason) #:transparent)

(define (admit p predicate?)
  (if (predicate? (proposal-value p))
      (accepted (proposal-value p))
      (refused p 'inadmissible)))

(define p1 (proposal 42 '(sensor-a sensor-b)))
(define p2 (proposal 41 '(sensor-c)))

(displayln (admit p1 even?))
(displayln (admit p2 even?))
