(define (sub-interval x y)
  (let ((p1 (- (upper-bound x) (lower-bound y)))
        (p2 (- (lower-bound x) (upper-bound y))))
    (make-interval (min (- 0 (abs p1)) (- 0 (abs p2)))
                   (max (abs p1) (abs p2)))))
