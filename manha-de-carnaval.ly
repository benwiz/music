\version "2.20.0"

\header {
  title = "Manhã de Carnaval"
  composer = "Composed by Luiz Bonfá"
  arranger = "Arranged by Ben Wisialowski"
  tagline = ##f
}

aMelody  = { c''2. b'8 a' } % one measure
beMelody = { a'2. gis'8 b' } % one
dgMelody = { a'2. g'8 b' } % one
abeMelody = { e'1( e'2.) e'4 } % two
caMelody = { e'1\2( e'2\2) r8 e'\2 f'\2 g'\2 } % two
dMelody  = { a'4. d'8 d'2 } % one
gMelody  = { r2 r8 d' e'\2 f'\2 } % one
cMelody  = { g'4. c'8 c'2 } % one
fmajMelody  = { r2 r8 c' d' e' } % one
bMelody  = { f'4. b8 b2 } % one
eMelody  = { r2 r8 b\3 cis'\3 d'\3 }
eadMelody = { ais'2. a'8 g'8\2
              g'2\2 r8 r f'\2 e'\2
              a'1
              r2 r4 d'4}
dWalkMelody = { d'2. e'8\2 f'8\2 }
beHighMelody = { b'1 }
aWalkMelody = { r4 c' c' d'8 e' }
fMelody = { a'2. gis'4 }
beMelodyB = { e'1
              r2 e'4 gis'8 b'8 }
aEndMelody = { a'1 }
beEndMelody = { r2 r4 e' }
codaMelody = { r2 r4 a'8 b'
               c''4 d''8 c'' b'4 a'8 b'
               c''4 d''8 c'' b'4 a'8 b'
               c''4 d''8 c'' b'4 a'8\2 g'\2
               a'1
               ( a'2.) r4 }

melody = {
  \time 4/4
  \voiceOne
  \partial 4 e'4\2
  \aMelody
  \beMelody

  \abeMelody

  \aMelody
  \dgMelody
  \caMelody
  \dMelody
  \gMelody
  \cMelody
  \fmajMelody
  \bMelody
  \eMelody

  \abeMelody

  \aMelody
  \beMelody

  \abeMelody

  \eadMelody
  \dWalkMelody
  \beHighMelody
  \aWalkMelody
  \fMelody
  \beMelodyB

  \aEndMelody
  \beEndMelody

  \codaMelody

}

aHarmonyA = { a,8\6 <c'\3 e'\2> r <c'\3 e'\2> }
bHarmonyA = { b,8\6 <d'\3 f'\2> r <d'\3 f'\2> }
eHarmonyA = { e,8 <b\3 d'\2> r <d'\3 f'\2> }

aHarmonyB = { a,8\6 <g c'\3 e'\2> r <g c'\3 e'\2> }
bHarmonyB = { b,8 <f a d'> r <f a d'> }
eHarmonyB = { e,8 <b d'> r <b d'> }

dHarmony = { d8\5 <c'\3 f'\2> r <c'\3 f'\2> }
gHarmony = { g,8 <b\3 d'\2> r <b\3 d'\2> }
cHarmony = { c8 <g\4 b\3> r <g\4 b\3> }
cisHarmony = { cis8 <g\4 b\3> r <g\4 b\3> }
amajHarmony = { a,8\6 <g\4 cis'\3> r <g\4 cis'\3> }
dHarmonyB = { d8\5 <c'\3 f'\2> r r d8\5 <f\4 c'\3> r <f\4 c'\3> }
gHarmonyB = { g,8 <f b\3 d'\2> r <f b\3 d'\2> g,8 <f b\3> r <f b\3> }
cHarmonyB = { c8 <e g> r r c <e a> r <e a> }
fmajHarmony = { f,8 <e a c'> r <e a c'> f, <d a> r <a c'> }
bHarmonyC = { b,8 <f a> r r b,8 <f a> r <f a> }
eHarmonyC = { e,8 <d\5 gis\4 b\3> r <d\5 gis\4 b\3> e, <d\5 gis\4> r <d\5 gis\4> }
eHarmonyD = { e8\5 <d'\3 g'\2> r <d'\3 g'\2> }
dWalkHarmony = { d8\5 <a\4 d'\3 f'\2> r <a\4 d'\3 f'\2>
                 d\5 <a\4 cis'\3 f'\2> r <a\4 cis'\3 f'\2>
                 d\5 <a\4 c'\3 f'\2> r <a\4 c'\3 f'\2>
                 d\5 <f c'\3> r <f c'\3> }
dRootWalkHarmony = { d\5 <f c'\3> r <f c'\3>
                     c <f c'\3> r <f c'\3> }
beHighHarmony = { b,8\6 <d'\3 f'\2> r <d'\3 f'\2>
                  e\5   <d'\3 f'\2> r <d'\3 f'\2> }
aWalkHarmony = { a,8 <e a> r <e a>
                 g, <e g> r <g c'> }
fHarmony = { f <c'\3 e'\2> r <c'\3 e'\2> }
codaHarmony = { \aHarmonyB a,2\6
                <d d'\3 f'\2> <a, c'\3 e'\2>
                <d d'\3 f'\2> <a, c'\3 e'\2>
                <d d'\3 f'\2> <e\5 d'\3 g'\2>
                <a, fis c'\3 e'\2>1
                ( <a, fis c'\3 e'\2>2.) r4 }

harmony = {
  \time 4/4
  \voiceTwo
  \partial 4 r4
  \aHarmonyA \aHarmonyA
  \bHarmonyA \eHarmonyA

  \aHarmonyB \aHarmonyB
  \bHarmonyB \eHarmonyB

  \aHarmonyA \aHarmonyA
  \dHarmony \gHarmony
  \cHarmony \cHarmony
  \cisHarmony \amajHarmony
  \dHarmonyB
  \gHarmonyB
  \cHarmonyB
  \fmajHarmony
  \bHarmonyC
  \eHarmonyC

  \aHarmonyB \aHarmonyB
  \bHarmonyB \eHarmonyB

  \aHarmonyA \aHarmonyA
  \bHarmonyA \eHarmonyA

  \aHarmonyB \aHarmonyB
  \bHarmonyB \eHarmonyB

  \eHarmonyD \eHarmonyD
  \amajHarmony \amajHarmony
  \dWalkHarmony
  \dRootWalkHarmony
  \beHighHarmony
  \aWalkHarmony
  \fHarmony \fHarmony

  \bHarmonyB \bHarmonyB
  \eHarmonyB \eHarmonyA

  \aHarmonyB \aHarmonyB

  \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
  \once \override Score.RehearsalMark.font-size = #2
  \mark \markup { \musicglyph #"scripts.coda" }

  \once \override TextScript.extra-offset = #'( 6.0 . 6.0 )
  <>^\markup { \center-column { "D.S. al Coda" } }

  \bHarmonyB \eHarmonyB

  \bar "||" \break

  \once \override Score.RehearsalMark.extra-offset = #'( 0 . 6 )
  \once \override Score.RehearsalMark.font-size = #2
  \mark \markup { \musicglyph #"scripts.coda" }

  \codaHarmony

  \bar "|."
}

beChords = \chordmode { b2:m7.5- e:7 } % TODO e:m7 -> e minor 7 flat 9
beChordsLong = \chordmode { b1:m7.5- e:7 } % TODO e:m7 -> e minor 7 flat 9
chordsA = \chordmode { a1:m7 \beChords }
chordsB = \chordmode { a1:m7
                       d2:m7 g2:7
                       c1:maj7
                       cis2:dim7 a2:7
                       d1:m7
                       g:7
                       c:6
                       f:maj7
                       \beChordsLong } % TODO e:m7 -> e minor 7 flat 9
chordsC = \chordmode { e1:m7.5-
                       a:7 }
%% just coincidence that this ended up being D, it is for the chord of d minor
chordsDWalk = \chordmode { d2:m d2:m7+
                           d1:m7 }
chordsDRootWalk = \chordmode { d2:m7 d:m7/c }
chordsARootWalk = \chordmode { a2:m a:m/g }
chordsF = \chordmode { f1:7 }
codaChords = \chordmode { a1:m7
                          d2:m7 a:m7
                          d:m7 a:m7
                          d:m7 e:m7
                          a1:m6 }

harmonyChords = {
  \set minorChordModifier = \markup { "-" }
  \partial 4 s4
  \chordsA
  \chordsA
  \chordsB
  \chordsA
  \chordsA
  \chordsA
  \chordsC
  \chordsDWalk
  \chordsDRootWalk
  \beChords
  \chordsARootWalk
  \chordsF
  \beChordsLong
  \chordsA
  \codaChords
}


\score {
  \layout { \omit Voice.StringNumber }
  <<
    \new StaffGroup = "tab with traditional" <<
      \new ChordNames {
        \harmonyChords
      }
      \new Staff = "guitar traditional" <<
        \clef "treble_8"
        \context Voice = "melody" \melody
        \context Voice = "harmony" \harmony
      >>
      \new TabStaff = "guitar tab" <<
        \context TabVoice = "melody" \melody
        \context TabVoice = "harmony" \harmony
      >>
    >>
  >>
}