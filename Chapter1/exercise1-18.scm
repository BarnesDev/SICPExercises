(define (* a b)
  (define (double x)
    (+ x x))
  (define (halve x)
    (/ x 2))
  (define (even? x)
    (= (remainder x 2) 0))
  
  (define (*iter a b product)
    (cond ((= a 1) (+ b product))
	  ((even? a) (*iter (halve a) (double b) product))
	  (else (*iter (halve (- a 1)) (double b) (+ b product)))))
  
  (*iter a b 0))

(write (* 55 500))
