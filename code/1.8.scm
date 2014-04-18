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
