(define (factorial-recursion n)
  (if ( = n 1)
      1
      (* n (factorial-recursion (- n 1)))))

(define (factorial-iterative n)
  (define (iter product counter)
    (if (> counter n)
	product
	(iter (* counter product)
	      (+ counter 1))))
  (iter 1 1))


(write (factorial-recursion 6))
(write (factorial-iterative 6))
