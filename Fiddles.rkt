
;Opdracht 2

(define (random-uit-lijst lijst) (first (shuffle lijst)))


;Opdracht 3
;a
(define (roteer-links lijst) (append (rest lijst) (list (first lijst))))

(define (roteer-rechts lijst) (append (rest (reverse lijst)) (list (first (reverse lijst)))))

;(define (roteer-rechts lijst) (append
;  (list (first (reverse lijst)))
;(take lijst (- (length lijst) 1))))

;b


(define (roteer-links lijst keer)
  (append (list-tail lijst keer) (take lijst keer)))

(define (roteer-links lijst keer)
  (append (list-tail (reverse lijst) (-(length lijst) keer) (take (reverse lijst) (-(length lijst) keer)))

;(define (roteer-rechts lijst keer)
;  (append (list-tail lijst (- (length lijst) keer))
;(take lijst (- (length lijst) keer))))
