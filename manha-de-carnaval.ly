\version "2.20.0"

aMelodyA = { c''2. b'8 a'8 } % one measure
beMelodyA = { a'2. gis'8 b'8 } % one
dgMelodyA = { a'2. g'8 b'8 } % one
abMelody = { e'1( e'2.) e'4 } % two


melody = {
  \time 4/4
  \voiceOne
  \partial 4 e'4\2
  \aMelodyA
  \beMelodyA
  \abMelody
  \aMelodyA
}

%% For now, harmonies are all half measures
aHarmonyA = { a,8\6 <c'\3 e'\2> r <c'\3 e'\2> }
bHarmonyA = { b,8\6 <d'\3 f'\2> r <d'\3 f'\2> }
eHarmonyA = { e,8 <b\3 d'\2> r <d'\3 f'\2> }

aHarmonyB = { a,8\6 <g c'\3 e'\2> r <g c'\3 e'\2> }
bHarmonyB = { b,8 <f a d'> r <f a d'> }
eHarmonyB = { e,8 <b d'> r <b d'> }

harmony = {
  \time 4/4
  \voiceTwo
  \partial 4 r4
  \aHarmonyA \aHarmonyA
  \bHarmonyA \eHarmonyA
  \aHarmonyB \aHarmonyB
  \bHarmonyB \eHarmonyB % \break
  \aHarmonyA \aHarmonyA
}

chordsA = \chordmode { a1:m7 b2:m7.5- e2:7 }

harmonyChords = {
  \set minorChordModifier = \markup { "-" }
  \partial 4 s4
  \chordsA
  \chordsA
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