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
(define (in-lijst lijst letter)
  (if (empty? lijst) #f
    (if (eq? (first lijst) letter) #t
      (in-lijst (rest lijst) letter))))


4.
(define (get_node chain note)
  (if (empty? chain) #f
    (if (eq? (first (first chain)) note)
     (first chain) (get_node (rest chain) note))))


5.
(define (get-successor chain note)
  (if (empty? chain) #f
    (if (eq? (first (first chain)) note)
     (first (shuffle (rest (first chain))))
      (get-successor (rest chain) note))))
