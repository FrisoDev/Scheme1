

;Bach Prelude XV
;((a fis c) (b g d) (c a fis e g) (d g e b) (e g d b) (fis a c g ) (g b c d e fis))


;Autumn Leaves
#lang racket
(require csd/lilypond)
(require csd/music_transforms)

(define (get_successor chain note)
  (if (empty? chain) #f
    (if (eq? (first (first chain)) note)
     (first (shuffle (rest (first chain))))
      (get_successor (rest chain) note))))

(define chain1 '((a fis c) (b g d) (c a fis e g) (d g e b) (e g d b) (fis a c g ) (g b c d e fis)))
(define chain2 '((a fis c) (b g d) (c a fis e g) (d g e b) (e g d b) (fis a c g ) (g b c d e fis)))

(define startnoot1 (list (first (first (shuffle chain1 )))))
(define startnoot2 (list (first (first (shuffle chain2 )))))

(define (stuk_genereren chain noten aantal_noten)
  (if (eq? (length noten) aantal_noten)
    ((lilypond-open "markov.ly")
    (lilypond-title "Mooistukje")
    (lilypond-write (transpose-phrase (make-phrase (notes-to-numbers noten) 4) 72))
    (lilypond-composer "Fweezo")
    (lilypond-key "c" "major")
    (lilypond-clef "treble")
    (lilypond-tempo 100)
    (lilypond-instrument "guitar" "acoustic guitar (nylon)")
    (lilypond-close))
    (stuk_genereren chain (append noten (list (get_successor chain (first (reverse noten))))) aantal_noten)))
