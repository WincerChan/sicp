(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt b n)
  (fast-expt-iter b n 1))

(define (fast-expt-iter b counter product)
  (cond ((= counter 0) 1)
        ((even? counter) (square (fast-expt-iter b (/ counter 2) (* product b))))
        (else (* b (fast-expt-iter b (- counter 1) (* product b))))))


