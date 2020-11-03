(define (square x) (* x x))
(define (cube x) (* x x x))
(define (abs x) (if (< x 0) (- x) x))
(define (approximate x y) (/
			   (+
			    (/ x
			       (square y))
			    (* 2 y))
			   3))
(define (good-enough guess x) (< (abs (- (cube guess) x)) 0.001))
(define (cbrt-iter guess x)
  (if (good-enough guess x)
      guess
      (cbrt-iter (approximate x guess) x)))
(define (cbrt x) (cbrt-iter 1.0 x))

(write (cbrt 64))
