#lang racket
(require racket/control)

(define (forked-futures)
  (reset
    (+ 1
       (shift k
         (list (k 10) (k 20))))))

(displayln (forked-futures))
(displayln "Delimited continuation: one captured future, two explored branches.")
