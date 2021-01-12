\version "2.20.0"  % necessary for upgrading to future LilyPond versions.

\header {
  title = "Dee"
  composer = "Randy Rhoads"
  tagline = ##f
}

hideFretNumber = {
  \once \hide TabNoteHead
  \once \hide NoteHead
  \once \hide Stem
  \once \override NoteHead.no-ledgers = ##t
  \once \override Glissando.bound-details.left.padding = #0.3
}

main = { 
  \time 3/4
  <g\5 b'>4 \tuplet 3/1 { d'\3 fis'\2( g'\2) } b'
  <d b a'>2.
  \harmonicsOn
  <a d' fis' b'>2. 
  \harmonicsOff
  <b\4 b'\1>8 d'\3 fis'\2 d'\3 b'\1 fis'\2
  <b\4 d''\1> d'\3 g'\2 d'\3 d'' g'\2
  b8\4 \glissando cis'\4 e'\3 a'\2 e''4\1
  <b\4 e''\1>2. % not positive about the b, but I like the sound of it
  <g\5 b'>4 \tuplet 3/1 { d'\3 fis'\2( g'\2) } b'
  <fis\5 a'\2>2.
  <e\5 g'\2>4 cis'\3 g'\2
  <d\5 fis'\2> <cis\5 e'\2> <b, d'>
  <g, e'> b e'
  <a, e'\2>8( d') cis'4 d'
  <fis, d'>8 d d' a e' d'
  fis'16( g' fis' e') <dis fis'>8 a b fis'
  % TODO not sure about timing next two measures, basically all the timing is not quite right
  b2 <b, b>8 <g, e'>8
  <fis, fis'> <e, g'> e g b g
  <e, g'>8( fis') <gis, fis'>( e') d' e'
  % TODO not sure about timing
  <a, cis'> g d'4 \harmonicsOn <g'\3 e''\1>( <g'\3 e''\1>2.) \harmonicsOff
  a16( b\3 a g fis e d8 cis16 b, a,8)
  d4 <d' fis'>8 <e' g'> a'16( b' a'8) % TODO not sure about timing
  <b, d'>8 g d' e' d'4 % timing
  d4 <d' fis'>8 <e' g'> <fis'\2 a'\1> b'16( cis'' b'8) % timing
  <a, cis'>8 g d' \glissando e'4\2 % timing
  <d a'>8( g') g' \glissando fis' fis'( e')
  <cis fis'>8( e') d' e' d' \glissando e'\2
  <b, d'>8 cis'16( b d' \glissando e'\2) <a, cis'>8 g d'
  <fis, d'>8 a d b, <e, g'>( fis')
  <gis, fis'>( e')  
  \harmonicsOn
  <a d' fis' b'>2
  \harmonicsOff
}

harmonyChords = \chordmode {
  \set minorChordModifier = \markup { "-" }
  g2.:maj7
  d2.:6
  d2.:6/a
  g2.:maj7/b
  g2./b
  a2./cis
  a2./cis
  g2.:maj7
  d2.
  a2.:7/e
  d4 cis:dim g/b
  g2.
  a2.
  d2.:6/fis
  b1:7/dis
  g2
  g2.:maj7.6
  e2. % e minor? e major?
  a2
  g1:6
  d2.
  d2.
  g2.:6/b
  d2.
  a2.
  d2.
  d2.:maj7.9/cis
  g2/b a4
  d2/fis a4:maj7
  a4:maj7 d:6/a  
}

\paper {
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 10)
       (stretchability . 60)) 
}

\score {
  \layout { 
    \omit Voice.StringNumber
  }
  <<
    \new StaffGroup = "tab with traditional" <<
      \new ChordNames {
        \harmonyChords
      }
      \new Staff = "guitar traditional" <<
        \clef "treble_8"
        \context Voice = "melody" \main
      >>
      \new TabStaff = "guitar tab" <<
        \context TabVoice = "melody" \main
      >>
    >>
  >>
}