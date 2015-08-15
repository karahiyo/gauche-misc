#!/usr/bin/env gosh

(use gauche.time)
(use benchmark)

(define (tarai x y z)
  (if (<= (x) (y))
      (y)
      (tarai (lambda () (tarai (lambda () (- (x) 1)) y z))
             (lambda () (tarai (lambda () (- (y) 1)) z x))
             (lambda () (tarai (lambda () (- (z) 1)) x y)))))

(print (tarai (lambda () 192) (lambda () 96) (lambda () 0)))
