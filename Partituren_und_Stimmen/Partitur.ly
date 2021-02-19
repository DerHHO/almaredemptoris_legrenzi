\version "2.22.0"
#(ly:set-option 'relative-includes #t)
#(set-default-paper-size "a4")
#(set-global-staff-size 17)

\include "../Noten/AlmaLegrenzi_Noten.ly"


\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #})) 




\book {
  \bookOutputName "Partitur"
  \paper {  
    
    ragged-right = ##f
    ragged-last-bottom = ##f
    left-margin = 1.3\cm
right-margin = 1.3\cm
indent = 3\cm
short-indent = 0.5\cm
print-all-headers = ##f
#(include-special-characters)

	
}
  \header {
    title = \titel
    subsubtitle = \untertitel
    dedication = \widmung
    composer = \komponist
    poet = \herausgeber
    arranger = \arrangeur
    tagline = \schlusszeile
    instrument = "Partitur"
    copyright = \copyrightAlmaLegrenzi
  }
  
  
  \score {
    
    \removeWithTag #'transponierendepartitur 
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \scoreAlmaLegrenzi
    
    \layout {
      \context {
        \Staff
        \override RestCollision.positioning-done = #merge-rests-on-positioning
      }
    }
  }
  \markup {
    \fill-line { \übersetzungMarkup }
  }
  
  
}