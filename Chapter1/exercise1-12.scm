(define (pascal-recursive row element)
  (cond ((or (= element 0) (= element row)) 1)
	(else (+
	       (pascal-recursive (- row 1) element)
	       (pascal-recursive (- row 1) (- element 1))))))

(write (pascal-recursive 4 2))
