(define (dec x) (- x 1))
(define (inc x) (+ x 1))


(define (plus a b)
  (if (= a 0)
      b
      (inc (plus (dec a) b))))

(write (plus 4 5))

#|
(plus 4 5)
(inc (plus (dec 4) 5))
(inc (inc (plus (dec 3) 5)))
(inc (inc (inc (plus (dec 2) 5))))
(inc (inc (inc (inc (plus (dec 1)) 5))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9

This recursive procedure is a recursive process.
|# 




(define (plus a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

(write (plus 4 5))

#|
(plus 4 5)
(plus (dec 4) (inc 5))
(plus (dec 3) (inc 6))
(plus (dec 2) (inc 7))
(plus (dec 1) (inc 8))
9

This recursive procedure is an iterative process
|#
