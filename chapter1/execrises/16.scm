;; Example using new-if. Trying not to run this before I can figure out what
;; might happen.
;;
;; So you cheated a bit. It recurses forever.

(define guess 1.0)
(define precision 0.001)

(define (new-if predicate first second)
  (cond (predicate first)
        (else second)))

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
  (new-if (precise? guess x)
      guess
      (root-iter (improve guess x) x)))

;; (define (root-iter guess x)
;;   (cond ((precise? guess x) guess)
;;         (else (root-iter (improve guess x) x))))

(define (sqrt x)
  (root-iter guess x))

(display (sqrt 5))
