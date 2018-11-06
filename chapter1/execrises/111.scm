;; This one looks like it wants us to just do 3, 2, 1 in decreasing order, and I
;; cannot figure out if... Do it the dumb way.

;; This is confusing...

(define (fr n)
  (cond ((< n 3) n)
        ((>= n 3) (+ (* 1 (fr (- n 1))) (* 2 (fr (- n 2))) (* 3 (fr (- n 3)))))))
