\version "2.18.2"

\header {
  title = "Something good"
  composer = "Composer"
}

\score
{
  \new Staff
  {
    \tempo 4=120
    \key c \major
    \clef treble
{ c16 e16 f16 g16 a16 f16 d16 c16 g16 f16 e16 c16 a16 f16 d16 c16 d16 f16 g16 a16 b16 g16 e16 d16 a16 g16 f16 d16 b16 g16 e16 d16 e16 g16 a16 b16 c16 a16 f16 e16 b16 a16 g16 e16 c16 a16 f16 e16 } \\ 
  } % Staff


  \layout {
    \context { \RemoveEmptyStaffContext }
  }
  \midi { }
} % score