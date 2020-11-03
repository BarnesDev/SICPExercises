(define (square x) (* x x))
(define (square-sum x y) (+ (square x) (square y)))
(define (square-sum-of-largest x y z)
  (cond ((and (<= x y) (<= x z)) (square-sum y z))
	((and (<= y x) (<= y z)) (square-sum x z))
	((and (<= z x) (<= z y)) (square-sum x y))))

(write (square-sum-of-largest 4 3 2))
