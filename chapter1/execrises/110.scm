(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1)))))) 


(A 1 10)
(A 0 (A 1 9))
(A 0 (A 0 (A 1 8)))
(A 0 (A 0 (A 0 (A 1 7))))
(A 0 (A 0 (A 0 (A 0 (A 1 6)))))
(A 0 (A 0 (A 0 (A 0 (A 0 (A 1 6))))))
;; Etc.

(define one (A 1 10))
(display one)
(newline)
(define two (A 2 4))
(display two)
(newline)
(define three (A 3 3))
(display three)
(newline)

;; (A 2 4)
;; (A 1 (A 2 3))
;; (A 1 (A 1 (A 2 2)))
;; (A 1 (A 1 (A 1 (A 2 1))))
;; (A 1 (A 1 (A 1 2)))
;; (A 1 (A 1 (A 0 (A 1 2))))
;; (A 1 (A 1 (A 0 (A 0 (A 1 1)))))
;; ; 8
;; (A 1 (A 1 8))
;; (A 1 (A 0 (A 1 7)))
;; (A 1 (A 0 (A 0 (A 1 6))))
;; (A 1 (A 0 (A 0 (A 0 (A 1 5)))))
;; (A 1 (A 0 (A 0 (A 0 (A 0 (A 1 4))))))
;; (A 1 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3)))))))
;; (A 1 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2))))))))
;; (A 1 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1)))))))))
;; ; 256
;; (A 1 256)
;; (A 0 (A 1 255))
;; 
;; (display one)


