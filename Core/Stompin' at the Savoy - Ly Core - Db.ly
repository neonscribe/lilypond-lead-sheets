%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "Stompin' at the Savoy"
  subtitle = \instrument
  poet = "Andy Razaf"
  composer = "Benny Goodman, Chick Webb and Edgar Sampson"
  copyright = "© 1936 Robbins Music Corporation."
}

refrainLyrics = \lyricmode {
Sa -- voy, __ the home of sweet ro -- mance,
Sa -- voy, __ it wins you at a glance,
Sa -- voy __ gives hap -- py feet a chance __ to dance. __
Your form, __ just like a cling -- in' vine, __
your lips, __ so warm and sweet as wine,
your cheek, __ so soft and close to mine,
di -- vine. __
How my heart is sing -- in', __
while the band is swing -- in', __
nev -- er tired of romp -- in' __ and stomp -- in' with you, __
at the Sa -- voy. __
What joy __ a per -- fect hol -- i -- day, __
Sa -- voy, __ where we can glide and sway, __
Sa -- voy, __ there let me stomp a -- way __
with you. __
}

refrainChords = \chordmode {
  s2
  
  df1:maj7 df2:maj7 af2:7 df1:maj7 df2:maj7 d2:dim7
  ef1:m7 af1:7 df2:6 bf2:m7 ef2:m7 af2:7

  df1:maj7 df2:maj7 af2:7 df1:maj7 df2:maj7 d2:dim7
  ef1:m7 af1:7 df1:6 df1:7
  
  gf2:7 g2:7 gf1:7 b2:7 fs2:m7.5- b1:7
  e2:7 f2:7 e1:7 a1:7 af1:7

  df1:maj7 df2:maj7 af2:7 df1:maj7 df2:maj7 d2:dim7
  ef1:m7 af1:7 df1:6 df2:6
  \chordInsideParens{ af2:7 }
}

refrainKey = df

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 160

  \partial 2 f4. af8~ |

  \textMark \markup{ \bold \box "A1" }
  
  af8 af,8 bf8 f'8 c4 af8 bf8~ | bf2 f'4. af8~ | af8 af,8 bf8 f'8 c4 af8 bf8~ | bf2 f'4. af8~ |
  \break
  af8 af,8 bf8 df8 gf4 df8 c8~ | c2 f4. df8~ | df1 | r2 f4. af8~ |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  af8 af,8 bf8 f'8 c4 af8 bf8~ | bf2 f'4. af8~ | af8 af,8 bf8 f'8 c4 af8 bf8~ | bf2 f'4. af8~ |
  \break
  af8 af,8 bf8 df8 gf4 df8 c8~ | c2 f4. df8~ | df1 | r1 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  af'8 gf4. a8 g4. | af8 gf4.~ gf4 r4 | gs8 fs4. b8 a4. | gs8 fs4.~ fs4 r4 |
  \break
  fs8 e4. g8 f4. | fs8 e4.~ e4 e4 | fs8 a8 a8 a8~ a2 | f8 af8 af8 af8~ af4 f8 af8~ |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A3" }

  af8 af,8 bf8 f'8 c4 af8 bf8~ | bf2 f'4. af8~ | af8 af,8 bf8 f'8 c4 af8 bf8~ | bf2 f'4. af8~ |
  \break
  af8 af,8 bf8 df8 gf4 df8 c8~ | c2 f4. df8~ | df1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
