(define (square x) (* x x))
(define (quotient x y) (/ x y))
(define (average x y) (/ (+ x y) 2))
(define (abs x) (if (< x 0) (- x) x))

(define (improve guess x) (average guess (quotient x guess)))

(define (good-enough guess x) (< (abs(- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x) (sqrt-iter 1.0 x))

(write (sqrt 2))
