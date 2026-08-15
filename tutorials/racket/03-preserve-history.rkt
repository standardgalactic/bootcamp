#lang racket

(struct event (kind payload) #:transparent)
(struct state (current history) #:transparent)

(define (append-event s e)
  (state
   (state-current s)
   (append (state-history s) (list e))))

(define initial (state 'unknown '()))
(define with-device-time (append-event initial (event 'device-time 2036)))
(define with-contradiction (append-event with-device-time (event 'observed-before 2026)))

(displayln with-contradiction)
(displayln "Interpretation can change; history stays preserved.")
