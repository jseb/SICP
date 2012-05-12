; -- 1.3 -----------------------------------------------------------------------
(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (max x y) (if (> x y) x y))

(define (sum-of-squares-largest-pair x y z)
  (cond ((> x y) (sum-of-squares x (max y z)))
          (else (sum-of-squares y (max x z)))))

; -- 1.7 -----------------------------------------------------------------------
(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess improved-guess)
  (< (abs (- guess improved-guess)) (* guess 0.0001)))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
        guess
        (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; -- 1.8 -----------------------------------------------------------------------
(define (cube x) (* x x x))

(define (average x y z)
  (/ (+ x y z) 3))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cbrt-iter guess x)
  (if (good-enough? guess (improve guess x))
        guess
        (cbrt-iter (improve guess x) x)))

(define (cbrt x)
  (cbrt-iter 1.0 x))
