\version "2.20.0"

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

mBreak = {
  %\break
}

mPageBreak = { 
  %\pageBreak 
}


globalAlmaLegrenzi = {
  \taktstil
  \accidentalStyle modern-voice
  \key d\dorian
  \time 4/4

}

ablaufzeileAlmaLegrenzi = { }

sopranNotenAlmaLegrenzi = \tempTranspose \relative a' {
  \globalAlmaLegrenzi
  \autoBeamOff
  a4 d,4 d'8 [ e8 ] f8 [ cis8 ] | % 2
  d8 [ c8 ] bes8 [ a8 ] bes8.( [ a16 ] g4) | % 3
  f2 f8 [ g8 ] a8 [ e8 ] | % 4
  f8 [ e8 ] f8 [ g8 ] e2 \mBreak | % 5
  d4 r8 a'8 d8. d16 c8. b16 | % 6
  c8 a8 c8 d8 e4 e4 | % 7
  r2 r4 r8 a,8 | % 8
  gis8([ a16 b16] c16 [d16 c16 b16] a8 [ b16 c16] d8 [ c16 d16]
  \mBreak | % 9
  b8 [ c16 d16 ] e16 [ f16 e16 d16 ] c8 [ d16 e16 ] f8 [ e16 f16 ] |
  \barNumberCheck #10
  d8) c8 b4 a4 r8 c8 | % 11
  f8. f16 e8. d16 e8 c8 e8 fis8 | % 12
  g4 g4 r4 r8 g8 \mPageBreak | % 13
  e8([ d16 e16 ] c8 [ f16 e16 ] d8 [ c16 d16 ] b8 [ c16 d16 ] | % 14
  e8) e8 d4 c2 | % 15
  R1*2 \mBreak | % 17
  e4 a,4 b8 [ c8 ] d8 [ b8 ] | % 18
  c8 [ b8 ] c8 [ d8 ] b2 | % 19
  a4 r8 c8 c4 c8 f,8 | \barNumberCheck #20
  e8([ c'16 b16 ] a8 [ g16 f16 ] g8) c,8 r4 \mBreak | % 21
  e8 f16 g16 a8 g16 a16 f8. f16 f4 | % 22
  r4 r8 f8 e8 f8 f8 e8 | % 23
  f2 r2 | % 24
  r4 r8 a8 a4 a8 d,8 \mBreak | % 25
  cis8 cis8 r4 f8 g16 a16 bes8 a16 bes16 | % 26
  g8. g16 g8 f8 e8 f8 e8. e16 | % 27
  d2 f8 g16 a16 bes8 a16 bes16 | % 28
  g8. f16 e4 a8 bes16 c16 d8 c16 d16 \mPageBreak | % 29
  bes8. bes16 bes8 a8 g8 a8 g8. g16 | \barNumberCheck #30
  f2 g2 | % 31
  r8 g8 f8 g8 e4 c8 c'8 | % 32
  c4 b8 b8 c4 c4 \mBreak | % 33
  r4 g8 f8 e8 e8 c'8 c8 | % 34
  bes8 bes8 bes8 bes8 a2 | % 35
  g2 r2 | % 36
  r2 a2 | % 37
  r8 a8 g8 a8 f4 d8 d'8 \mBreak | % 38
  d4 cis8 cis8 d8 d8 fis,8 gis8 | % 39
  a8 a8 a8 a8 a4( gis4) | \barNumberCheck #40
  a2 r2 | % 41
  R1 \mBreak | % 42
  R1*3 | % 45
  r4 f'8 f8 f8 e8 e8 e8 | % 46
  e8. d16 d4 r4 d8 e8 \mPageBreak | % 47
  c4 c8 c8 b4 b4 | % 48
  e8 e8 e8 e8 a,8 a8 d8 d8 | % 49
  d8 c8 d8 e8 c4.( b8) | \barNumberCheck #50
  a2 r4 d8 e8 | % 51
  f4 f4 r4 a,8 c8 \mBreak | % 52
  bes2 a2 | % 53
  r2 r4 c8 c8 | % 54
  c8 bes8 bes8 bes8 bes8. a16 a4 | % 55
  r4 g8 a8 f4 f8 f8 \mBreak | % 56
  e4 e4 a8 a8 a8 a8 | % 57
  d,8 d8 d'8 e8 cis8 cis8 d8 d8 | % 58
  d4( cis4) d4 d8 f8 | % 59
  e8 c8 d8 e8 cis8.[ b16] a4 \mBreak | \barNumberCheck #60
  a8 a8 a8 a8 d,8 d8 d'8 e8 | % 61
  cis8 cis8 d8 d8 d4( cis4) | % 62
  d4 d8 d8 d4( cis4) | % 63
  d1 \bar "|."
}

sopranTextAlmaLegrenzi = \lyricmode {
  Al -- ma Re -- dem -- pto -- ris Ma -- ter,
  Re -- dem -- pto -- ris Ma -- ter,
  quæ per via cæ -- li por -- ta,
  por -- ta ma -- nes, et stel -- la ma -- ris,
  quæ per via cæ -- li  por -- ta,
  por -- ta ma -- nes,
  et stel -- la ma -- ris.
  Al -- ma Re -- dem -- pto -- ris Ma -- ter,
  suc -- cur -- re ca -- den -- ti sur -- ge -- re,
  sur -- ge -- re,
  sur -- ge -- re qui cu -- rat po -- pu -- lo,
  suc -- cur -- re ca -- den -- ti sur -- ge -- re,
  sur -- ge -- re, sur -- ge -- re,
  qui cur -- rat po -- pu -- lo,
  sur -- ge -- re, sur -- ge -- re,
  sur -- ge -- re, sur -- ge -- re,
  sur -- ge -- re,
  sur -- ge -- re,
  qui cur -- rat po -- pu -- lo.
  Tu, quæ ge -- nu -- i -- sti,
  na -- tu -- ra mi -- ran -- te,
  tu -- um sanc -- tum,
  tu -- um sanc -- tum Ge -- ni -- to -- rem,
  tu, quæ ge -- nu -- i -- ste,
  na -- tu -- ra mi -- ran -- te,
  tu -- um sanc -- tum Ge -- ni -- to -- rem,
  vir -- go pri -- us ac pos -- te -- ri -- us,
  Ga -- bri -- e -- lis ab o -- re 
  su -- mens il -- lud a -- ve,
  pec -- ca -- to -- rum mi -- se -- re -- re,
  mi -- se -- re -- re, mi -- se -- re -- re,
  vir -- go pri -- us ac po -- ste -- ri -- us,
  Ga -- bri -- e -- lis ab o -- re
  su -- mens il -- lud a -- ve,
  pec -- ca -- to -- rum  mi -- se -- re -- re,
  mi -- se -- re -- re,
  mi -- se -- re -- re,
  su -- mens il -- lud a -- ve,
  pec -- ca -- to -- rum mi -- se -- re -- re,
  mi -- se -- re -- re.
}

altNotenAlmaLegrenzi = \tempTranspose \relative a' {
  \globalAlmaLegrenzi
  \autoBeamOff
  R1*2 | % 3
  a4 d,4 d'8 [ e8 ] f8 [ cis8 ] | % 4
  d8 [ cis8 ] d8 [ e8 ] d4( cis4) \mBreak | % 5
  d2 r2 | % 6
  r2 r4 r8 a8 | % 7
  d8. d16 c8. b16 c8 a8 c8 d8 | % 8
  e4 e4 r4 r8 b8 \mBreak | % 9
  gis8([ a16 b16 ] c16 [ d16 c16 b16 ] a8 [ b16 c16 ] d8 [ c16 d16 ] |
  \barNumberCheck #10
  b8) a8 a8 [ gis8 ] a2 | % 11
  r4 r8 g8 c8. c16 b8. a16 | % 12
  b8 g8 b8 cis8 d4 d4 \mPageBreak | % 13
  r4 r8 d8 b8([ a16 b16 ] g8 [ a16 b16 ] | % 14
  c8) c8 c8 [ b8 ] c2 | % 15
  e4 a,4 b8 [ c8 ] d8 [ b8 ] | % 16
  c8 [ b8 ] a8 [ gis8 ] a2 \mBreak | % 17
  gis4 r4 gis8 [ a8 ] b8 [ gis8 ] | % 18
  a8 [ gis8 ] a8 [ b8 ] a4( gis4) | % 19
  a2 r2 | \barNumberCheck #20
  r4 r8 c8 c4 c8 f,8 \mBreak | % 21
  e8 e8 r4 a8 bes16 c16 d8 c16 d16 | % 22
  bes8. bes16 bes8 a8 g8 a8 g8. g16 | % 23
  f4 r8 a8 a4 a8 d,8 | % 24
  cis8([ a'16 g16 ] f8 [ e16 d16 ] e8) a,8 r4 \mBreak | % 25
  cis8 d16 e16 f8 e16 f16 d8. d16 d4 | % 26
  r4 r8 d8 cis8 d8 d8 cis8 | % 27
  d2 r2 | % 28
  e8 f16 g16 a8 g16 a16 f8. e16 d4 \mPageBreak | % 29
  r4 r8 f8 e8 f8 f8 e8 | \barNumberCheck #30
  f2 r2 | % 31
  r2 g2 | % 32
  r8 g8 f8 g8 e4 c8 c'8 \mBreak | % 33
  c4 b8 b8 c8 c8 e,8 fis8 | % 34
  g8 g8 g8 g8 g4( fis4) | % 35
  g2 a2 | % 36
  r8 a8 g8 a8 f4 d8 d'8 | % 37
  d4 cis8 cis8 d4 d4 \mBreak | % 38
  r4 a8 g8 f8 f8 d'8 d8 | % 39
  c8 c8 c8 c8 b2 | \barNumberCheck #40
  a4 c8 c8 c8 bes8 bes8 bes8 | % 41
  bes8. a16 a4 r4 g8 a8 \mBreak | % 42
  f4 f8 f8 e4 e4 | % 43
  a8 a8 a8 a8 d,8 d8 g8 g8 | % 44
  g8 f8 g8 a8 f4.( e8) | % 45
  d2 r2 | % 46
  R1 \mPageBreak | % 47
  R1*3 | \barNumberCheck #50
  r4 a'8 c8 bes2 | % 51
  a4 a8 a8 d,8 e8 f8 f8 \mBreak | % 52
  f4( e4) f4 c'8 c8 | % 53
  c8 bes8 bes8 bes8 bes8. a16 a4 | % 54
  r4 g8 g8 g8. f16 f4 | % 55
  r4 e8 e8 d4 d8 d8 \mBreak | % 56
  cis4 cis4 f8 f8 f8 f8 | % 57
  f8 f8 g8 g8 g8 g8 f8 f8 | % 58
  e2 d4 bes'4 ~ | % 59
  bes8 a8 a8 [ g8 ] a2 \mBreak | \barNumberCheck #60
  f8 f8 f8 f8 f8 f8 g8 g8 | % 61
  g8 g8 f8 f8 e2 | % 62
  d4 f8 f8 e2 | % 63
  d1 \bar "|."
}

altTextAlmaLegrenzi = \lyricmode {
  Al -- ma Re -- dem -- pto -- ris Ma -- ter,
  quæ per -- via cæ -- li  por -- ta,
  por -- ta ma -- nes, et stel -- la ma -- ris,
  quæ per via cæ -- li por -- ta,
  por -- ta ma -- nes,
  et stel -- la ma -- ris.
  Al -- ma Re -- dem -- pto -- ris Ma -- ter,
  Re -- dem -- pto -- ris Ma -- ter, 
  suc -- cur -- re ca -- den -- ti sur -- ge -- re, 
  sur -- ge -- re,
  sur -- ge -- re qui cu -- rat po -- pu -- lo, 
  suc -- cur -- re ca -- den -- ti sur -- ge -- re, 
  sur -- ge -- re, 
  sur -- ge -- re,
  qui cur -- rat po -- pu -- lo, sur -- ge -- re, 
  sur -- ge -- re, sur -- ge -- re,
  qui cur -- rat po -- pu -- lo. 
  Tu, quæ ge -- nu -- i -- sti, 
  na -- tu -- ra mi -- ran -- te, 
  tu -- um sanc -- tum Ge -- ni -- to -- rem, 
  tu, quæ ge -- nu -- i -- ste, 
  na -- tu -- ra mi -- ran -- te, 
  tu -- um sanc -- tum, tu -- um sanc -- tum 
  Ge -- ni -- to -- rem, 
  vir -- go pri -- us ac po -- ste -- ri -- us,
  Ga -- bri -- e -- lis ab o -- re 
  su -- mens il -- lud a -- ve, 
  pec -- ca -- to -- rum mi -- se -- re -- re, 
  mi -- se -- re -- re, 
  pec -- ca -- to -- rum mi -- se -- re -- re, 
  vir -- go pri -- us ac pos -- te -- ri -- us, 
  ac po -- ste -- ri -- us, 
  Ga -- bri -- e -- lis ab o -- re 
  su -- mens il -- lud a -- ve, 
  pec -- ca -- to -- rum mi -- se -- re -- re, 
  mi -- se -- re -- re, 
  su -- mens il -- lud a -- ve, 
  pec -- ca -- to -- rum
  mi -- se -- re -- re, mi -- se -- re -- re.
}

continuoNotenAlmaLegrenzi = \tempTranspose \relative c {
  \globalAlmaLegrenzi
  d4. c8 bes4 a4 |
  bes4 fis4 g4 bes8 c8 |
  d4. c8 bes4 a4 |
  d4 bes4 g4 a4 |
  \mBreak
  d4. c8 b4 e4 |
  a4 f4 e4 c4 |
  d4 e4 a4 f4 |
  e4 c4 f4 d4 | \mBreak
  e4 c4 f4 d4 ~ |
  d8 [ a8 ] e4 a4 a'8 [ g8 ] |
  f4 g4 e4 a4 |
  g4 e4 d4 b4 |
  \mPageBreak 
  c4 f4 g4. f8 |
  e8 [ c8 ] g4 c8 [ c'8 ] b8 [ a8 ] |
  gis4 a4 a4 gis4 |
  a4 e4 f4. f8 | \mBreak
  e4 c4 b4 e,4 | 
  a4 f'4 d4 e4 |
  a,4 f'4 e4 d4 |
  c4 f4 e4 d4 | \mBreak 
  c4 a4 d8 [ c8 ] bes8 [ a8 ] |
  g4. f8 c'8 a8 bes8 [ c8 ] |
  f4 d4 c4 bes4 |
  a4 d4 c4 bes4 | \mBreak 
  a4 f4 bes'8 [ a8 ] g8 [ f8 ] |
  e4. d8 a'8 f8 g8 [ a8 ] |
  d,8 [ e8 ] d8 [ c8 ] bes8 [ a8 ] g8 [ f8 ] |
  c'4. c8 d8 [ c8 ] bes8 [ a8 ] | \mPageBreak 
  g4. f8 c'8 [ a8 ] bes8 [ c8 ] |
  f,8 [ f'8 ] e8 [ d8 ] c8 [ d8 ] e8 [ f8 ] |
  g8 [ a8 ] b8 [ g8 ] c8 [ c,8 ] e8 [ f8 ] g4 g,4 c4 a4 | \mBreak 
  f4 g4 c4 a4 |
  g8 [ a8 ] bes8 [ c8 ] d8 c8 d8 [ d,8 ] |
  g8 [ g'8 ] f8 [ e8 ] d8 [ e8 ] f8 [ g8 ] |
  a8 [ b8 ] cis8 [ a8 ] d8 [ d,8 ] f8 [ g8 ] |
  a4 a,4 d4 bes4 | \mBreak 
  g4 a4 d4 b4 |
  a8 [ b8 ] c8 [ d8 ] e8 [ d8 ] e8 [ e,8 ] |
  a4. f'8 g4. e8 f4. d8 e4. cis8 |
  \mBreak 
  d8 [ e8 ] f8 [ g8 ] a8 [ a8 ] a8 [ a8 ] |
  d,4. c8 bes4. g8 |
  a4 g4 a2 |
  d4. b8 c4. a8 |
  b4 b'8 [ a8 ] gis8 [ fis8 ] gis8 [ e8 ] | \mPageBreak 
  a8 [ b8 ] c8 [ d8 ] e8 [ e8 ] e8 [ e8 ] |
  a,4. g8 f4. d8 |
  e4 d4 e4 e,4 |
  a4 a'4 g4 g,4 |
  f4 f'4 bes,4 f4 | \mBreak
  bes4 c4 f,4 f'4 |
  g4. e8 f4. c8 |
  d4. e8 f4. e16 [ d16 ] |
  cis8 [ b8 ] cis8 a8 d8 [ e8 ] f8 [ g8 ] |
  \mBreak 
  a8 [ a8 ] a8 [ a8 ] d,4. c8 |
  bes4. g8 a4 g4 a8 [ g8 ] a4 d,4. d'8 |
  c4 bes4 a8 [ a8 ] a8 [ a8 ] |
  \mBreak 
  d,4 d'8 [ c8 ] bes4. g8 |
  a4 g4 a8 g8 a4 |
  d4 f,8 [ g8 ] a8 g8 a4 |
  d1 \bar "|."
}

bezifferungAlmaLegrenzi = \figuremode {
  \globalAlmaLegrenzi
  s2. <[6 4]>8 <[_+]> |
  s4 <[4-]>8 <[6 5]> <[_-]>4 <[6]>8 s8 |
  s2. <6 [4]>8 <5 [_+]> |
  s2 <6 5>4 <[_+]> |
  s2 <7>4 <[6 4]>8. <[_+]>16 |
  s4 s <[_+]> <6> |
  s4 <[6 4]>8. <[_+]>16 s4 s |
  <[_+]>4 <[6]> s4 s |
  <_+>4 <[6]> s4 s |
  s <4>8 <_+> s4 s |
  <5> s s <5>8 <6\\> |
  s4 <5>8 <6\\> s4 s |
  s4 <5>8 <6> s2 |
  <6>8 s <[4]>8 <[3]> s2 |
  <[6]>4 s <2> <[6 5]> |
  s4 <6 [4]>8 <5 _+> <7>4 <6> |
  <_+> <[6]> <6\\> <_+> |
  s4 s <5> <[_+]> |
  s2 s4 <7>8 <6> |
  s2 s4 <7>8 <6> |
  s1 |
  <_->4. <6>8 s8 <6> <6 5> s |
  s4 s <6> <7>8 <6> |
  <[_+]>4 s s s |
  <_+>4 s s s |
  s4 s <_+>8 <6> <5> s |
  s1 |
  <5>4 <6> s4 s |
  <_->4. s8 s8 s8 <[6 5]> s8 |
  s1 |
  s4 <[6]> s4 <[6]>8 s8 |
  <[6 4]>4 <[5 3]> s4 s |
  <5>4 s4 s <5>8 <6\\> |
  <_->4 <[6]> <4> <_+> |
  <_->4 s s s |
  <[_+]>4 <[6]> s4 <[6]> |
  <4> <[_+]> s4 s4 |
  <5> <[_+]> s4 <5>8 <6\\> |
  s4 <[6]> <4> <_+> |
  s4. s8 <4>4 <_->8 <[6 5]> |
  <4>4 <3> <4> <_->8 <[6]> |
  s4 <[6]> <[4]> <[_+]> |
  s4. <[6]>8 <5>4 <6> |
  <_+>4 s4 <4> <_+> |
  <_!>4. s8 <4>4 <3> |
  <[5+] 4>8 <3> s4 s <5>8 <[_+]> |
  s4 <[6]> <[4]> <[_+]> |
  s4. s8 <5>4 <6> |
  <7 _+> <7> <4> <_+> |
  s4 s <7-> <6> |
  s4 s <6 5> <7> |
  s4 s4 s s |
  <4>8 <_->4 <[6 5]>8 <[4]>4 <[3]>8 <6> |
  <7>8 <6->4 <[6 5]>8 <9>4 <8> |
  <[6]>4 <[6] 5>8 <7 [_+]> s4 <[6]> |
  <_+>2 s4. s8 |
  <5>4 <6>8 <[6]> <7 _+>4 <7> |
  <5 [4]> <_+> <5> <6-> |
  <7>8 <6> <7> <6> <[_+]>2 |
  s4 s <5> <6>8 <[6]> |
  <7 _+>4 <7> <4>8 <3> <[_+]>4 |
  s4 <6> <4>8 <3> <_+>4 |
  s1
}

orgelRHNotenAlmaLegrenzi = \tempTranspose \relative c' {
  \globalAlmaLegrenzi

}

orgelLHNotenAlmaLegrenzi = \tempTranspose \relative c {
  \globalAlmaLegrenzi

}

übersetzungMarkup = \markup {
  \center-column {
    \line { Erhabne Mutter des Erlösers, }
    \line { du allzeit offene Pforte des Himmels }
    \line { und Stern des Meeres, }
    \line { komm, hilf deinem Volke, }
    \line { das sich müht, vom Falle aufzustehn. }
    \line { Du hast geboren, der Natur zum Staunen, }
    \line { deinen heiligen Schöpfer. }
    \line { die du, Jungfrau davor und danach, }
    \line { aus Gabriels Mund vernahmst das selige Ave, }
    \line { o erbarme dich der Sünder. }
  }
}


metronomZeileAlmaLegrenzi = \drummode {
}
\include "defAlmaLegrenzi.ly"

%***Arbeitspartitur
#(set-global-staff-size 16)
\book {
  \bookOutputName "AlmaLegrenzi-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreAlmaLegrenzi
  }
}

\book {
  \bookOutputName "AlmaLegrenzi-midi"
  \score {

    \midi {
      \tempo 4 = 120
      \context {
        \Score
        midiChannelMapping = #'instrument
      }
    }

    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'chorpartitur
    \removeWithTag #'partitur
    \removeWithTag #'einzelstimme

    \unfoldRepeats
    \scoreAlmaLegrenzi
  }
}
%Arbeitspartitur***
