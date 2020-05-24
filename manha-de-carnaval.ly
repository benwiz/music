\version "2.20.0"

%% For now, melodies are all full meaures
aMelodyA = { c''2. b'8 a'8 }
beMelodyA = { a'2. gis'8 b'8 }
dgMelodyA = { a'2. g'8 b'8 }

melody = {
  \time 4/4
  \voiceOne
  \partial 4 e'4\2
  \aMelodyA
  \beMelodyA
  a'1( a'2.) e'4
  \aMelodyA
}

%% For now, harmonies are all half measures
aHarmonyA = { a,8\6 <c'\3 e'\2> r <c'\3 e'\2> }
bHarmonyA = { b,8\6 <d'\3 f'\2> r <d'\3 f'\2> }
eHarmonyA = { e,8 <b\3 d'\2> r <d'\3 f'\2> }

bHarmonyB = { b,8 <f a d'> r <f a d'> }
eHarmonyB = { e,8 <b d'> r <b d'> }

harmony = {
  \time 4/4
  \voiceTwo
  \partial 4 r4
  \aHarmonyA \aHarmonyA
  \bHarmonyA \eHarmonyA
  \aHarmonyA \aHarmonyA
  \bHarmonyB \eHarmonyB
  \aHarmonyA \aHarmonyA
}

\score {
  \layout { \omit Voice.StringNumber }
  <<
    \new StaffGroup = "tab with traditional" <<
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