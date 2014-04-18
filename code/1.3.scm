; -- 1.3 -----------------------------------------------------------------------
(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (max x y) (if (> x y) x y))

(define (sum-of-squares-largest-pair x y z)
    (cond ((> x y) (sum-of-squares x (max y z)))
          (else (sum-of-squares y (max x z)))))
