(require csd/lilypond)
(require csd/music_transforms)

(define motief-stijgend '(c e f g))
(define motief-dalend '(a f d c))

(define wijsje
  (append motief-stijgend motief-dalend (reverse motief-stijgend) motief-dalend))

(define omkeerwijsje
  (append motief-stijgend motief-dalend
         (reverse motief-dalend) (reverse motief-stijgend)))

(define liftwijsje
  (append wijsje
          (transpose-naturals wijsje 1)
          (transpose-naturals wijsje 2)))

(define melody-phrase (transpose-phrase (make-phrase (notes-to-numbers liftwijsje) 16) 48))

(lilypond-open "melody.ly")
(lilypond-title "Bla")
(lilypond-open "melody.ly")
(lilypond-write melody-phrase)
(lilypond-composer "F")
(lilypond-key "c" "major")
(lilypond-clef "treble")
(lilypond-tempo 100)
(lilypond-instrument "guitar" "acoustic guitar (nylon)")
(lilypond-close)
