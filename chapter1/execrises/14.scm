(define (abs-a-b-plus a b)
  ((if (> b 0) + -) a b))

(display (abs-a-b-plus -2 -2))
