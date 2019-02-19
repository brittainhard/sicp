(define (even? n)
  (= (remainder n 2) 0))

(define (/ a b)
  (divide-iter a b 0))

(define (divide-iter a b counter)
  (cond ((= a 0) counter)
        ((= b 0) 0)
        (else (divide-iter (- a b) b (+ counter 1)))))

(define (double a)
  (+ a a))

(define (halve a)
  (/ a 2))

(define (* a b)
  (mul-iter a b 0))

(define (mul-iter b counter product)
  (cond ((= counter 0) product)
        ((even? counter)
         (mul-iter b
                   (halve counter)
                   (+ counter product)))
        (else (mul-iter b
                        (- counter 1)
                        (+ b product)))))

(display (* 2 4))
(display "\n")
(display (* 2 10))
(display "\n")
(display (* 2 1000))
