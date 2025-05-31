%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "I've Enjoyed as Much of This as I Can Stand"
  subtitle = "Bass transcription of Porter Wagoner's 1962 recording"
  composer = "Bill Anderson"
  % copyright = \markup \small "© 1962 Moss Rose Publications, Inc."
}

whatKey = g

refrainChords = \chordmode {
  s1
  
  g1 c1 g1 g2 d2
  g1 d1 g1 g2 c2
  
  g1 d1 g1 g1
  
  g1 c1 g1 g2 c2
  g1 d1 g1 g1
  
  g1 c1 g1 g2 c2
  g1 d1 g1
  
  g1

  g2 g2:7
  

  c1 c1 g1 g1
  g1 g1 d1
  
  d1

  g1 c1 g1 g2 c2
  g1 d1 g1 g1

  g1 c1 g1 g1
  g1 d1 g1 g2 g2:7

  d1

  g1 c1 g1 g2 c2
  %% g1 d1 g1 g2 c2
  g1 d1 g1 g1
}

refrainKey = g

refrainMelody = \relative g, {
  \time 4/4
  \key \refrainKey \major
  \clef bass
  \tempo "Swing" 4 = 136

  \sectStart "Intro"

    <<
      {
	s1 |
      }
      \new CueVoice
      {
	\ottava #1
	  d''8\rest^"steel guitar" d8 \tuplet 3/2 { fs8 g8 a8 } b8 d8 fs4 |
	\ottava #0
      }
      >>

   g,,4 r4 d4 r4 | c4 r4 e4 fs4 | g4 r4 d4 r4 | g4 c,4 d4 fs4 |
  \break
  g4 r4 d4 r4 | d4 r4 e4 fs4 | g4 r4 d4 r4 | g4 r4 c,4 r4 |

  g'4 r4 g4 r4 | d4 r4 e4 fs4 | g4 r4 d4 r4 | g4 d4 e4 fs4 |

  \sectNoBar "Verse"
  
  \bar ".|:-||"
  \repeat volta 2 {
  g4 r4 d4 r4 | c4 r4 e4 fs4 | g4 r4 d4 r4 | g4 r4 c,4 r4 |
  g'4 r4 d4 r4 | d4 r4 e4 fs4 | g4 r4 d4 r4 | g4 d4 e4 fs4 |

  g4 r4 d4 r4 | c4 r4 e4 fs4 | g4 r4 d4 r4 | g4 r4 c,4 r4 |
  g'4 r4 g4 r4 | d4 r4 e4 fs4 | g4 r4 d4 r4 |

  \alternative {
    \volta 1 {
      g4 d4 e4 fs4 |
    }
    \volta 2 {
      g4 r4 a,4 b4 |
    } } }


  \sectNoBar "Chorus"
  
  \bar ".|:-||"
  \repeat volta 2 {

  c4 r4 g'4 r4 | c,4 r4 g'4 r4 | g4 r4 d4 r4 | g4 d4 e4 fs4 |
  \break
  g4 r8 g8( d4) r4 | g4 r8 g8( d4) r4 | d4 r8 d8( a4) r4 |

  \alternative {
    \volta 1 {
      d4 d4 e4 fs4 |

      \break
      g4 r4 d4 r4 | c4 r4 e4 fs4 | g4 r4 d4 r4 | g4 r4 c,4 r4 |

      g'4 r4 g4 r4 | d4 r4 e4 fs4 | g4 r4 d4
      r4 | g4 d4 e4 fs4 |

      \sect "Solo"

      g4 r4 d4 r4 | c4 r4 e4 fs4 | g4 r4 d4 r4 | g4 d4 e4 fs4 |
      \break
      g4 r4 d4 r4 | d4 r4 e4 fs4 | g4 r4 d4 r4 | g4 g,4 a4 b4 |
    }
    \volta 2 {
      d4 c4 b4 a4 |
    }
  } }

  \bar "||-||"
  \break

  g'4 r4 d4 r4 | c4 r4 c4 r4 | g'4 r4 d4 r4 | g4 r4 c,4 c4 |
  \break
  g'4 r4 g4 r4 | d4 r4 e4 fs4 | g4 r4 d4 r4 | g4 d4 g2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
