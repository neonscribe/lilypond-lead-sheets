%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Shot the Sheriff"
  subtitle = \instrument
  poet = ""
  composer = "Bob Marley"
  copyright = "© 1974 Cayman Music, Inc."
}

refrainLyrics = \lyricmode {
I shot the sher -- iff, but I did not shoot the dep -- u -- ty. __
I shot the sher -- iff, but I did not shoot the dep -- u -- ty. __

All a -- round in my home town
they're try -- ing to track me down.
They say they want to bring me in guilt -- y
for the kill -- ing of a dep -- u -- ty.
For the life of a dep -- u -- ty.

But I say: 
}

refrainChords = \chordmode {
  g1:m c1:m7 g1:m g1:m
  g1:m c1:m7 g1:m g1:m
  
  ef2:maj7 d2:m7 g1:m ef2:maj7 d2:m7 g1:m 
  ef2:maj7 d2:m7 g1:m ef2:maj7 d2:m7 g1:m 
  
  ef2:maj7 d2:m7 g1:m  r1 r2 r1
  
  g1:m c1:m7 g1:m g1:m
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Slow" 4 = 97

  \xTextMark \markup{ \bold \box "A" }
  
  d'4 c8 bf16 c16~ c8 d4. | r4 g,8 g8 bf8 bf8 c8 bf8 | d8 g,8 g4 r2 | r1 |
  \break
  d'4 c8 bf16 c16~ c8 d4. | r4 g,8 g8 bf8 bf8 c8 bf8 | d8 g,8 g4 r2 | r1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r4 g8 g8 f4 d8 f8 | f8( g8) d4 r4 r8 bf8 |
  g'8 g4 g8 g8( f8) f4 | d2 r4 r8 bf8 |
  \break
  g'8 g8 g8 g8 f8 d8 f4 | g4 d4 r4 bf8 bf8 |
  d8 ef8 f8 ef8 d4 d8( c8) | bf2~ bf8 r8 ef8 f8 |
  \break
  g4 d8 c8 c4 d8( c8) | bf2~ bf8 r16 d16 f8 g8 |
  \break
  g4 f8 d8~ d8 c8 bf8 d8 |
  \time 2/4
  c8 bf8~ bf8 g8~ |
  \time 4/4
  g1 |

  \bar "|."
  \break

  \xTextMark \markup{ \bold \box "Outro" }
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \bar "|."
  \pageBreak
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"


\markup {
  \column {
    \vspace #7
    \line { \large { \bold "2." } }
    \vspace #6
    \line { \large { \bold "3." } }
    \vspace #6
    \line { \large { \bold "4." } }
  }
  \column { \hspace #3 }
  \column {
    \vspace #4
    \line { \large { I shot the sheriff, but I swear it was in self-defense. } }
    \line { \large { I shot the sheriff, and they say it is a capital offense. } }
    \vspace #1
    \line { \large { Sheriff John Brown always hated me, for what I don't know. } }
    \line { \large { Every time that I plant a seed he said, “Kill it before it grows.” } }
    \line { \large { He said, “Kill it before it grows.” But I say, } }
    \vspace #1
    \line { \large { I shot the sheriff but I swear it was in self-defense. } }
    \line { \large { I shot the sheriff but I swear it was in self-defense. } }
    \vspace #1
    \line { \large { Freedom came my way one day and I started out of town. } }
    \line { \large { All of a sudden, I see sheriff John Brown, aiming to shoot me down. } }
    \line { \large { So I shot, I shot him down. But I say } }
    \vspace #1
    \line { \large { I shot the sheriff but I did not shoot the deputy. } }
    \line { \large { I shot the sheriff but I did not shoot the deputy. } }
    \vspace #1
    \line { \large { Reflexes got the better of me and what is to be, must be. } }
    \line { \large { Every day the bucket goes to well but one day the bottom will drop out. } }
    \line { \large { Yes, one day the bottom will drop out. But I say } }
    \vspace #1
    \line { \large { I shot the sheriff but I did not shoot the deputy. } }
    \line { \large { I shot the sheriff but I did not shoot the deputy. } }
  }
}
