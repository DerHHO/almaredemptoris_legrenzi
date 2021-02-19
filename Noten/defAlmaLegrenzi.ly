
chorpartiturAlmaLegrenzi = {
  \new ChoirStaff <<
    <<

      \new Staff \with {
        instrumentName = "Sopran"
        shortInstrumentName = "S"
        midiInstrument = "voice oohs"

      }
      <<
        \new Voice = "vsop" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \sopranNotenAlmaLegrenzi
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenAlmaLegrenzi
          }
        }
        \addlyrics \sopranTextAlmaLegrenzi
      >>


      \new Staff \with {
        instrumentName = "Alt"
        shortInstrumentName = "A"
        midiInstrument = "choir aahs"

      }
      <<
        \new Voice = "valt" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \altNotenAlmaLegrenzi
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenAlmaLegrenzi
          }
        }
        \addlyrics \altTextAlmaLegrenzi
      >>
    >>
  >>
}
orgelsystemAlmaLegrenzi = {
  <<
    \new PianoStaff <<

      \tag #'partitur {
        \set PianoStaff.instrumentName = "Orgel"
        \set PianoStaff.shortInstrumentName = "Org." 
      }
      <<

        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

        }
        <<
          \new Voice = "vrh" {
            \tag #'transponierendepartitur {
              \clef "treble"
              \transpose c c \orgelRHNotenAlmaLegrenzi
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenAlmaLegrenzi
            }
          }

        >>


        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

          \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 9) (minimum-distance . 7) (padding . 1) (stretchability . 5))
        }
        <<
          \new Voice = "vlh" {
            \tag #'transponierendepartitur {
              \clef "bass"
              \transpose c c \continuoNotenAlmaLegrenzi
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \continuoNotenAlmaLegrenzi
            }
          }
          \new FiguredBass \bezifferungAlmaLegrenzi
        >>

      >>
    >>
  >>

}

continuoSystemAlmaLegrenzi = {
  <<
    \new Staff \with {
      instrumentName = "Basso continuo"
      shortInstrumentName = "B.c."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vContinuo" {
        \tag #'transponierendepartitur {
          \clef "bass"
          \transpose c c \continuoNotenAlmaLegrenzi
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \continuoNotenAlmaLegrenzi
        }
      }
      \new FiguredBass \bezifferungAlmaLegrenzi
    >>
  >>
}

scoreAlmaLegrenzi = {
  <<
    \chorpartiturAlmaLegrenzi
    \continuoSystemAlmaLegrenzi
  >>
}

scoreAlmaLegrenziMitAussetzung = {
  <<
    \chorpartiturAlmaLegrenzi
    \orgelsystemAlmaLegrenzi
  >>
}