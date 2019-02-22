(define (even? x)
  (= (remainder x 2) 0))

(define (square x)
  (* x x))

(define (fib2 n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib2 (- n 1))
                 (fib2 (- n 2))))))

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (p-transform a b p q)
  (+ (* b q) (* a q) (* a p)))
  
(define (q-transform a b p q)
  (+ (* b p) (* a q)))

(define (fib-iter a b p q count)
  (display a)
  (display " ")
  (display b)
  (display " ")
  (display p)
  (display " ")
  (display q)
  (display "\n")
  (cond ((= count 0) b)
        ((even? count) (fib-iter a
                                 b
                                 (square (p-transform a b q p))
                                 (square (q-transform a b q p))
                                 (/ count 2)))
        (else (fib-iter (p-transform a b p q)
                        (q-transform a b p q)
                        p
                        q
                        (- count 1)))))

(display (fib 7))
(display "\n")
(display (fib2 3))
(display "\n")
(display (q-transform 1 0 0 1))
