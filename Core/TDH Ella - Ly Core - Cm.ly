%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Too Darn Hot"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = "© 1949 Cole Porter"
}

refrainLyricsOne = \lyricmode {
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _

It's too darn hot, _ _ it's too darn hot. _ _
I'd like to sup _ _ with my ba -- by to -- night. _
Re -- fill the cup with my ba -- by to -- night.
I'd like to sup with my ba -- by to -- night,
re -- fill the cup with my ba -- by to -- night,
but I ain't up to my ba -- by to -- night 'cause it's too darn hot.
It's

-cord -- ing to the Kin -- sey re -- port ev -- 'ry av -- er -- age man you know
much pre -- fers his lov -- ey dov -- ey to court when the tem -- per -- a -- ture is low.
But when the ther -- mom -- e -- ter goes way up and the weath -- er is siz -- lin' hot.
Mis -- ter

pants for ro -- mance is not,
'cause it's too, too, too darn hot, it's too darn hot, it's too darn __ hot. Ac-

gob for his squab, a ma -- rine for his queen,
a G. I. for his cute -- y pie is not
'cause it's too, too, too darn hot, it's too darn hot, it's too darn __ hot!
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _

_ too darn hot, _ _ it's too darn hot. _ _
I'd like to coo _ _ with my ba -- by to -- night. _
And pitch the woo with my ba -- by to -- night.
I'd like to coo with my ba -- by to -- night
and pitch the woo with my ba -- by to -- night,
but I won't fight with my ba -- by to -- night, cause it's too darn hot.
Ac-
}

refrainChords = \chordmode {
  c1:m6 c1:m6 c1:m6 c1:m6
  
  c2:m6 g2:m7 c1:m6 c2:m6 g2:m7 c1:m6

  c2:m6 c2:m/b c2:m/bf c2:m/a af1:9.11+ g1:7
  c2:m6 c2:m/b c2:m/bf c2:m/a af1:9.11+ g1:7
  
  c2:6 c2:7 f2:6 f2:m6 c2:6 c2:7 f2:6 f2:m6
  c2:6 c2:7 f2:6 g2:7.5+ d2:7 g2:7 c1:m6

  c1:maj7 c1:maj7 c1:maj7 c1:maj7
  c1:maj7 c1:maj7 c1:maj7 g1:7
  c2:maj7 c2:7 f2:maj7 fs2:dim7 c1:maj7 d2:7 g2:7

  c1 af2:7 g2:7 c4 r4*7
  c2:m6 g2:m7 c1 c2:m6 g2:m7 c1
  af1:maj7 f2:maj7 g2:7 c1 c2 g2:7

  c1 af2:7 g2:7 c1 af2:7 g2:7
  c1 af2:7 g2:7 c4 r4*7
  c2:m6 g2:m7 c1 c2:m6 g2:m7 c1
  af1:maj7 f2:maj7 g2:7 c1:maj7 c1:6.9
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium-Up Swing " 4 = 162

  \xTextMark \markup{ \bold \box "Intro" }
  
  c'4-> ef8 c8 d8 c8 a8 c8-> | r4 <c ef g a c>4-> r4 g8 c8~ | 
  c4-> ef8 c8 d8 c8 a8 c8-> | r4 <c ef g a c>4-> r4
  \bar "!-!"
  
  g4 |

  \xTextMark \markup{ \bold \box "A" }
  
  \bar ".|:"
  \repeat volta 2 {
  c2 bf2 | g4 <c ef g a c>8 <ef g a c ef>8 r4 g,4 | 
  c2 bf2 | g4 <ef g a c ef>8 <g a c ef g>8 r4 g4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  c4 d8 ef8~ ef4 <c ef g a c>8 <ef g a c ef>8 | 
  r4 ef8 d8 ef8 d8 c8 d8~ |
  d8\noBeam <cs e g b cs>8 <d f af c d>8 <cs e g b cs>8 r2 |
  r2 r4 g4 |
  \break
  c4 d8 ef8~ ef2~ | ef8 ef4 c8 ef8 d8 c8 d8~ | d1~ | d4 r4 r4 g,4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  c4 d8 e8~ e8 e4 c8 | e8 d8 c8 d8~ d8 r8 g,4 | e'4 f8 g8~ g8 g4 e8 | g8 f8 e8 f8~ f4 d4 |
  \break
  g4 a8 bf8~ bf8 bf4 g8 | bf8 a8 g8 a8~ a8 g4 f8 | ef2 d2 |
  c4 r4 r4 g'4 |
  }
  \pageBreak

  \override Score.Clef.break-visibility = #begin-of-line-visible
  \override Score.KeySignature.break-visibility = #begin-of-line-visible

  \xTextMark \markup{ \bold \box "D" }
  
  \key \refrainKey \major
  
  \bar ":|.|:"
  \repeat volta 2 {
  a4 g4 e4 a8 g8~ | g8 e8 a4 g4 a8 g8 | a8 a8 g4 e4 d4 | e2~ e8 a8~ a8 g8 |
  \override Score.Clef.break-visibility = #all-invisible
  \override Score.KeySignature.break-visibility = #all-invisible
  \break
  a4 g4 e4 a8 g8~ | g8 e8 a4 g4 a8 g8 | a8 a8 g4 e4 c4 | d2. g,4 |
  \break
  c4 c8 d8 e8 d8 c4 | f4 g4 a4 a8 b8 | c8 c8 a4 g4 a4 | d,4 r4 r4 c8 d8 |
  \break
  \alternative { \volta 1 {
  e4 r4 c4 d4 | ef4 r4 r4 d4 |
  c4 r4 g'4. gs8 | a2 b2 |
  \break
  c2 bf2 | g4 r4 r4 g4 | c2 bf2 | g4 r4 r4 c,4 |
  \break
  g'1 | f4( ef2.) | c4 r4 r2 | r2 r4 g'4 |
  \break
  } \volta 2 {
  e4 r4 c4 d4 | ef4 r4 r4 c8 d8 |
  e4 r4 r4 c8 d8 | ef4 r4 r4 c8 d8 |
  \break
  e4 r4 r4 c8 d8 | ef8 ef4 ef8~ ef4 d4 |
  c4 r4 g'4. gs8 | a2 b2 |
  \break
  c2 bf2 | g4 r4 r4 g4 | c2 bf2 | g4 r4 r4 c,4 |
  \break
  g'1 | f4( ef2.) | c4 r4 r2 | r1 |
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"

\markup { "Solo on " \bold \box "A" \bold \box "B" \bold \box "C" 
	  " after " 
	  \box "D" " with first ending and before "
	  \box "D" " with second ending" }