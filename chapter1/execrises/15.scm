;; With applicative order, this will run forever. With normal order, it will
;; return 0.

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(display (test 0 (p)))
