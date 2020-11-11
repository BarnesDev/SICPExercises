(define (expt b n)
  (expt-iter 1 b n))

(define (even? x)
  (= (remainder x 2) 0))

(define (square x) (* x x))

(define (expt-iter a b n)
  (cond ((= n 0) a)
	((even? n) (expt-iter a (square b) (/ n 2)))
	(else (expt-iter (* a b) (square b) (/ (- n 1) 2)))))

(define answer (expt 3 1000000))

(write answer)
