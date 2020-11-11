(define (expt-recursive b n)
  (if (= n 0)
      1
      (* b (expt-recursive b (- n 1)))))

(define (expt-iterative b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0)
      product
      (expt-iter b
		 (- counter 1)
		 (* b product))))

(define (fast-expt b n)
  (define (square x) (* x x))
  (define (even? x)
    (= (remainder x 2) 0))

  
  (cond ((= n 0) 1)
	((even? n) (square (fast-expt b (/ n 2))))
	(else (* b (fast-expt b (- n 1))))))


(write (fast-expt 5 100000))
