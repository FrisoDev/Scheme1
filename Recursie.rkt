Recursie Scheme

1.

(define (aantal lst)
  (if (empty? lst) 0
    (+ 1 (aantal (rest lst)))))


2.
(define (totaal lst)
  (if (empty? lst) 0
    (+ (first lst) (totaal (rest lst)))))


3.
(define (in_lijst lijst letter)
  (if (empty? lijst) #f
    (if (eq? (first lijst)  letter) #t
      (in_lijst (rest lijst) letter))))
