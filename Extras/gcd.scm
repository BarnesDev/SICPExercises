(define (gcd a b)
(if (= b 0)
    a
    (gcd b (remainder a b))))

(write (gcd 206 40))
