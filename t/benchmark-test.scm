#!/usr/bin/env gosh

(use gauche.time)
(use benchmark)

(bench (+ 1 1))

(bench (sys-sleep 1))

(bench "with msg" (+ 1 1))

(bench "2?" (begin
              (sys-sleep 1)
              (bench "1?" (sys-sleep 1))))

(dotimes (i 3) (bench "1?" (sys-sleep 1)))

