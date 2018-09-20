(define (sqrt1 x)
  (define guess 1.0)
  (define precision 0.0000001)
  
  (define (abs x)
    (if (< x 0) (- x) x))
  
  (define (square x) (* x x))
  
  (define (average x y)
    (/ (+ x y) 2))
  
  (define (improve guess x)
    (average guess (/ x guess)))
  
  (define (precise? current previous)
    (< (abs (- current previous)) precision))
  
  (define (root-iter current previous x)
    (if (precise? current previous)
        current
        (root-iter (improve current x) current x)))
  
  (root-iter 1.0 0.0 x))
