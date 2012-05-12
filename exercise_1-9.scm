; -- exercise 1.9 --------------------------------------------------------------
; Run this through the debugger, and notice that the deferred + operations on
; the stack grows up to 4 (a), before they start reducing down to eventually
; zero when the answer is found. Therefore this is a recursive process that uses
; n (a) amount of memory space.
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(+ 4 5)

; Notice that in this case, the number of deferred + operations on the stack is
; constantly one. therefore this in an iterative process which uses constant
; memory space.
(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

(+ 4 5)
