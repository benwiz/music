\version "2.20.0"

\header {
  title = "Manhã de Carnaval"
  composer = "Composed by Luiz Bonfá"
  arranger = "Arranged by Ben Wisialowski"
  tagline = ##f
}

aMelody  = { c''2. b'8 a'8 } % one measure
beMelody = { a'2. gis'8 b'8 } % one
dgMelody = { a'2. g'8 b'8 } % one
abMelody = { e'1( e'2.) e'4 } % two
caMelody = { e'1\2( e'2\2 e'8\2) e'8\2 f'8\2 g'8\2 } % two
dMelody  = { a'4. d'8 d'2 } % one
gMelody  = { r2 r8 d'8 e'8 f'8 } % one

melody = {
  \time 4/4
  \voiceOne
  \partial 4 e'4\2
  \aMelody
  \beMelody
  \abMelody
  \aMelody
  \dgMelody
  \caMelody
  \dMelody
  \gMelody
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
amajHarmony = { a,8\6 <g\4 cis'\3 e'\2> r <g\4 cis'\3> }
dHarmonyB = { d8\5 <c'\3 f'\2> r r d8\5 <f\4 c'\3> r <f\4 c'\3> }
gHarmonyB = { g,8 <f b\3 d'\2> r <f b\3 d'\2> g,8 <f b\3> r <f b\3> }

harmony = {
  \time 4/4
  \voiceTwo
  \partial 4 r4
  \aHarmonyA \aHarmonyA
  \bHarmonyA \eHarmonyA
  \aHarmonyB \aHarmonyB
  \bHarmonyB \eHarmonyB % \break
  \aHarmonyA \aHarmonyA
  \dHarmony \gHarmony
  \cHarmony \cHarmony
  \cisHarmony \amajHarmony
  \dHarmonyB
  \gHarmonyB \gHarmonyB
}

chordsA = \chordmode { a1:m7 b2:m7.5- e2:7 }
chordsC = \chordmode { a1:m7 d2:m7 g2:7 c1:maj7 cis2:dim7 a2:7 d1:m7 g1:7 c1:6 f1:maj7 }

harmonyChords = {
  \set minorChordModifier = \markup { "-" }
  \partial 4 s4
  \chordsA
  \chordsA
  \chordsC
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