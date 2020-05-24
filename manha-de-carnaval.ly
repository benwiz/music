\version "2.20.0"

% TODO don't show string number

% For now, melodies are all full meaures
aMelody = { c''2. b'8 a'8 }
beMelody = { a'4 }

melody = {
  \time 4/4
  \voiceOne
  \partial 4 e'4\2
  \aMelody
  \bMelody \eMelody
}

% For now, harmonies are all half measures
aHarmony = { a,8\6 <c'\3 e'\2> r <c'\3 e'\2> }
bHarmony = { b,8\6 <d'\3 f'\2> r <d'\3 f'\2> }
eHarmony = { e,8 <b\3 d'\2> r <b\3 d'\2> }

harmony = {
  \time 4/4
  \voiceTwo
  \partial 4 r4
  \aHarmony \aHarmony
  \bHarmony \eHarmony
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