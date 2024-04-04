%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

$(if (or (and (defined? 'printNoteNames) printNoteNames)
         (string=? instrument "Bb for Standard Key"))
  (set-global-staff-size 16))

\header {
  title = "My One and Only Love"
  subtitle = \instrument
  poet = "Robert Mellin"
  composer = "Guy Wood"
  copyright = "© 1952 EMI Music Publishing Ltd."
}

refrainLyrics = \lyricmode {
The ver -- y thought of you makes my heart sing __
like an A -- pril breeze __ on the wings of spring,
and you ap -- pear in all your splen -- dor, __ my one and on -- ly love.
The shad -- ows fall and spread their mys -- tic charms __
in the hush of night __ while you're in my arms.
I feel your lips so warm and ten -- der, __ my one and on -- ly love.
The touch __ of your hand __ is like heav -- en; __
a heav -- en that I've __ nev -- er known.
The blush __ on your cheek when ev -- er I speak tells me that you are my own.
You fill my ea -- ger heart with such de -- sire. __
Ev -- 'ry kiss you give __ sets my soul on fire.
I give my -- self in sweet sur -- ren -- der, __ my one and on -- ly love.
}

refrainChords = \chordmode {
  c2:maj7 a2:m7 d2:m7 g4:8 gs4:dim7 a2:m7 f2:maj7 b2:m7.5- e4:m7.5- a4:7
  d2:m7 g4:7 gs4:dim7 a2:m7 d2:7 d2:m7 g2:7 e4:m7 a4:7 d4:m7 g4:7

  c2:maj7 a2:m7 d2:m7 g4:8 gs4:dim7 a2:m7 f2:maj7 b2:m7.5- e4:m7.5- a4:7
  d2:m7 g4:7 gs4:dim7 a2:m7 d2:7 d2:m7 g2:7 c2:maj7 fs4:m7.5- b4:7
  
  e1:m7 fs2:m7.5- b2:7 e1:m7 fs2:m7.5- b2:7
  e2:m e2:m7+ e2:m7 a2:7 d2:m7 af2:7 d2:m7 g2:7

  c2:maj7 a2:m7 d2:m7 g4:8 gs4:dim7 a2:m7 f2:maj7 b2:m7.5- e4:m7.5- a4:7
  d2:m7 g4:7 gs4:dim7 a2:m7 d2:7 d2:m7 g2:7.9- c2:maj7
  \chordOpenParen{ d4:m7 }
  \chordCloseParen{ g4:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 116

  \mark \markup{ \box "A1" }
  
  r8 g,8 a8 c8 d8 e8 b'8 g8 | a4 d4 b4~ \tuplet 3/2 { b8 g8 f8 } |
  e4 c'4 a4~ \tuplet 3/2 { a8 f8 e8 } | d4 b'4 g2 |
  r8 a8 g8 f8 e8 d8 g8 e8 | c8 a4.~ a2 | r8 f'8 g8 a8 g4 d4 | g1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  r8 g,8 a8 c8 d8 e8 b'8 g8 | a4 d4 b4~ \tuplet 3/2 { b8 g8 f8 } |
  e4 c'4 a4~ \tuplet 3/2 { a8 f8 e8 } | d4 b'4 g2 |
  r8 a8 g8 f8 e8 d8 g8 e8 | c8 a4.~ a2 | r8 f'8 g8 a8 g4 e4 | c2. r8 b8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  b'4~ \tuplet 3/2 { b8 a8 g8 } b4~ \tuplet 3/2 { b8 a8 g8 } |
  b,8 b4.~ b4 r8 b8 |
  b'4~ \tuplet 3/2 { b8 a8 g8 } b4~ \tuplet 3/2 { b8 a8 g8 } |
  b,2. r8 b8 |
  \break
  e4~ \tuplet 3/2 { e8 fs8 g8 } e4. b8 | e4~ \tuplet 3/2 { e8 fs8 g8 } e2 |
  \tuplet 3/2 { d4 d4 d4 } \tuplet 3/2 { f4 d4 f4 } | d1 |
  
  \bar "||"

  \mark \markup{ \box "A3" }

  r8 g,8 a8 c8 d8 e8 b'8 g8 | a4 d4 b4~ \tuplet 3/2 { b8 g8 f8 } |
  e4 c'4 a4~ \tuplet 3/2 { a8 f8 e8 } | d4 b'4 g2 |
  \break
  r8 a8 g8 f8 e8 d8 g8 e8 | c8 a4.~ a2 | r8 f'8 g8 f8 af4 b4 | c2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
