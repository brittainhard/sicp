(define (square x) (* x x))

(define (square-sum x y) (+ (square x) (square y)))

(define (sum-of-larger-squares x y z)
  (cond ((and (<= x y) (<= x z)) (square-sum y z))
        ((and (<= y x) (<= y z)) (square-sum x z))
        ((and (<= z x) (<= z y)) (square-sum x y))))

(display (sum-of-larger-squares 4 3 2))
(newline)
(display (sum-of-larger-squares 2 3 4))
(newline)
(display (sum-of-larger-squares 3 4 2))
(newline)
(display (sum-of-larger-squares 4 2 2))
(newline)
(display (sum-of-larger-squares 2 2 4))
(newline)
(display (sum-of-larger-squares 2 4 2))
(newline)

