(define (curt-iter guess x)
  (if (good-enough? guess x)
      guess
      (curt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))


(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) 0.001))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (square x)
  (* x x))