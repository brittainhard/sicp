(define guess 1.0)
(define precision 0.0000001)

(define (abs x)
  (if (< x 0) (- x) x))

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (precise? guess x)
  (< (abs (- (square guess) x)) precision))

(define (root-iter guess x)
  (if (precise? guess x)
      guess
      (root-iter (improve guess x) x)))

(define (sqrt x)
  (root-iter guess x))

(display (sqrt 2))
