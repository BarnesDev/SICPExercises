(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1))
	 (f-recursive (- n 2))
	 (f-recursive (- n 3)))))

(define (f-iterative n)
  
  (define (iter a b c count)
    (if (< count 3)
	b
	(iter b c (+ a b c) (- count 1))))
  
  (if (< n 3)
      n
      (iter 1 2 3 n)))

(write (f-recursive 6))
(write (f-iterative 6))


