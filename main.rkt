#lang racket/base

(provide
 american-gods
 the-raven)

(define (american-gods)
  (displayln #<<QUOTE
"Hey," said Shadow. "Huginn or Muninn, or whoever you are."
The bird turned, head tipped, suspiciously, on one side, and it stared at him with bright eyes.
"Say 'Nevermore,'" said Shadow.
"Fuck you," said the raven.
QUOTE
             ))

(define (the-raven)
  (let loop ()
    (displayln "Nevermore")
    (sleep 1)
    (loop)))

(module+ test
  (require rackunit)
  (check-not-false (american-gods)))
