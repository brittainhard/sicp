(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

(define (dec x)
  (- x 1))

(define (inc x)
  (+ x 1))

;; Illustration

(+ 4 5)
(+ 1 (+ 3 5))
(+ 1 (+ 1 (+ 2 5)))
(+ 1 (+ 1 (+ 1 (+ 1 5))))
(+ 1 (+ 1 (+ 1 (+ 1 (+ 0 5)))))
(+ 1 (+ 1 (+ 1 (+ 1 5))))
(+ 1 1 1 1 5)

(+ 4 5)
(+ 3 6)
(+ 2 7)
(+ 1 8)
(+ 0 9)
