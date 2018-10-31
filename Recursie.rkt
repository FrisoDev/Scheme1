(define (aantal lst)
  (if (empty? lst) '()
  (cons (length (first lst))
    (aantal (rest lst)))))


(define (totaal lst)
  (if (empty? lst) '()
    (+ (first lst) (totaal (rest list)))))
