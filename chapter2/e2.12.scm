;; (define (make-center-width c w)
;;   (make-interval (- c w) (+ c w)))

;; (define (center i)
;;   (/ (+ (lower-bound i) (upper-bound i)) 2))

;; (define (width i)
;;   (/ (- (upper-bound i) (lower-bound i)) 2))

(define (make-center-percent c p)
  (define (percent c p)
    (* c p))
  (make-interval (- c (percent c p))
                 (+ c (percent c p))))
