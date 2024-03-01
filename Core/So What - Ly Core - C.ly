%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "So What"
  subtitle = \instrument
  poet = ""
  composer = "Miles Davis"
  copyright = "© 1959 Jazz Horn Music"
}

refrainLyrics = \lyricmode {
}

chordSize = #+1

refrainChords = \chordmode {
  s1
  
  r2 <e a d' g' b'>4. <d g c' f' a'>8 r1
  r2 <e a d' g' b'>4. <d g c' f' a'>8 r1
  r2 <e a d' g' b'>4. <d g c' f' a'>8 r1
  r2 <e a d' g' b'>4. <d g c' f' a'>8
  
  r1
  
  r1

  r2 <f bf ef' af' c''>4. <ef af df' gf' bf'>8 r1
  r2 <f bf ef' af' c''>4. <ef af df' gf' bf'>8 r1
  r2 <f bf ef' af' c''>4. <ef af df' gf' bf'>8 r1
  r2 <f bf ef' af' c''>4. <ef af df' gf' bf'>8 r1

  r1
  
  d1*16:m7 ef1*8:m7 d1*8:m7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef bass
  \tempo "Medium" 4 = 137

  r8_"(8va)" d,,8 a'8 b8 c8 d8 e8 c8 |

  \mark \markup{ \box "A" }
  
  \bar ".|:"
  \repeat volta 3 {
      <<
      {
        \voiceOne
  d1 |
  d8\rest d,8 a'8 b8 c8 d8 e8 c8 | d8 a4.~ a2 |
  d8\rest d,8 a'8 b8 c8 d8 e8 c8 | d1 |
  d8\rest e4. e4 e4 | d4. a8~ a2 |
      }
     \new Voice {
        \voiceTwo
	s2 b'4. a8 | s1 | s2 b4. a8 | s1 | s2 b4. a8 | s1 | s2 b4. a8 |
      }
    >>
    \oneVoice
  \alternative { \volta 1 {
  d,8\rest d,8 a'8 b8 c8 d8 e8 c8 |
  } \volta 2 {
  d8\rest ef,8 bf'8 c8 df8 ef8 f8 df8 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }

      <<
      {
        \voiceOne
  ef1 |
  d8\rest ef,8 bf'8 c8 df8 ef8 f8 df8 | ef8 bf4.~ bf2 |  
  d8\rest ef,8 bf'8 c8 df8 ef8 f8 df8 | ef1 |
  d8\rest ef,8 bf'8 c8 df8 ef8 f8 df8 | ef8 bf4.~ bf2 |  
  d8\rest d,8 a'8 b8 c8 d8 e8 c8 |
      }
     \new Voice {
        \voiceTwo
	s2 c'4. bf8 | s1 | s2 c4. bf8 | s1 | s2 c4. bf8 | s1 | s2 c4. bf8 | s1 |
      }
    >>
    \oneVoice
  \break
  }
  \volta 3 {
  r1 |
  } } }
  \mark \markup{ \box "Solos" }
  
  \bar ".|:"
  \override MultiMeasureRest.expand-limit = 2
  \repeat volta 2 { \compressMMRests
   { R1*16^\markup{ \box "A" \box "A" } R1*8^\markup{ \box "B" } R1*8^\markup{ \box "A" } } }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup { "After solos, " \box "A" \box "A" \box "B" \box "A" " then vamp on " \box "A" " until cue." }

chordDiagrams = {
#(if (and (defined? 'guitarChords) guitarChords)
  #{
  <e a d' g' b'>1
  <d g c' f' a'>
  <f bf ef' af' c''>
  <ef af df' gf' bf'>
  #} 
#{
  \chordmode {
  s4
}
  #}
)
}


\markup {
  % Leave a gap after the refrain
  \vspace #2
}

\include "../Include/chord-diagrams.ily"
