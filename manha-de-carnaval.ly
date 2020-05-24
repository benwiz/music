\version "2.20.0"

melody = {
  \time 4/4
  \voiceOne
  \partial 4 e'\2
  c''2. b'8 a'8
  a'4
  
}

aHarmony = { a,8 <c'\3 e'\2> r <c'\3 e'\2> }

harmony = {
  \time 4/4
  \voiceTwo
  \partial 4 r4
  \aHarmony \aHarmony
}

\score {
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