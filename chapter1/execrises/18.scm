(define (cubert x)
  (define guess 1.0)
  (define previous 0.0)
  (define precision 0.0000001)
  
  (define (abs x)
    (if (< x 0) (- x) x))
  
  (define (square x) (* x x))

  (define (improve guess x)
    (/ 
      (+ (/ x (square guess))
         (* 2 guess))
      3))
  
  (define (precise? guess previous)
    (< (abs (- guess previous)) precision))
  
  (define (root-iter guess previous x)
    (if (precise? guess previous)
        guess
        (root-iter (improve guess x) guess x)))
  
  (root-iter guess previous x))

(display (cubert 9))
