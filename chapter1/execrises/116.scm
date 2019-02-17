(define (square x)
  (* x x))

(define (expt b n)
  (expt-iter b n 1))
;The difference between linear and iterative recursive algorithms is that linear recursive ones pass themselves as an argument, whereas interative ones call themselves to get a more precise return value.
;
;They all strive towards some base value to return upon, but not before... no no no.
;
;In the case of the iterative, you are passing the result along to the next function, which then returns it. It's just a for loop without the for.
;
;The linear goes down to its basest level, but the iterative counts up. The linear will always return something like 1, and then move back up the chain of function calls, but iterative is preparing the return value all the while.

(define (even? n)
  (= (remainder n 2) 0))

(define (expt-iter b counter product)
  (display b)
  (display " ")
  (display counter)
  (display " ")
  (display product)
  (display "\n")
  (cond ((= counter 0) product)
        ((even? counter) 
         (expt-iter b 
                    (/ counter 2)
                    (square product)))
        (else (expt-iter b
                         (- counter 1)
                         (* b product)))))

(display (expt-iter 3 15 1))
