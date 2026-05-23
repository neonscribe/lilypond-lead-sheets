%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "singerGender": [ "female", "male" ] } }

%}

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Someday My Prince Will Come"
  subtitle = \subtitle
  poet = "Larry Morey"
  composer = "Frank Churchill"
  copyright = \markup \small { \now " " "© 1937 Bourne Co." }
}

refrainObjectGenderMaleLyrics = \lyricmode {
Some -- day my prince will come.
Some -- day I'll find my love,
and how thrill -- ing that mo -- ment will be,
when the prince of my dreams comes to me. __
He'll whis -- per, “I love you,”
and steal a kiss or two.
Though he's far a -- way,
I'll find my love some day,
some -- day when my dreams come true. __
}

refrainObjectGenderFemaleLyrics = \lyricmode {
Some -- day I'll find my love,
some -- one to call my own,
and I'll know her the mo -- ment we meet,
for my heart will start skip -- ping a beat.
Some -- day we'll say and do
things we've been long -- ing to.
Though she's far a -- way,
I'll find my love some -- day.
some -- day when my dreams come true. __
}

refrainLyrics =
#(if (and (defined? 'singerGender) (equal? singerGender "male"))
   refrainObjectGenderFemaleLyrics
   refrainObjectGenderMaleLyrics)

refrainChords = \chordmode {
  bf2.:maj7 d2.:7.5+ ef2.:maj7 g2.:7.5+
  c2.:m7 g2.:7.5+ c2.:m7 f2.:7

  d2.:m7 cs2.:dim7 c2.:m7 f2.:7
  d2.:m7 cs2.:dim7 c2.:m7 f2.:7

  bf2.:maj7 d2.:7.5+ ef2.:maj7 g2.:7.5+
  c2.:m7 g2.:7.5+ c2.:m7 f2.:7

  bf2.:maj7 d2.:7.5+ ef2.:maj7 e2.:dim7
  bf2.:maj7/f g2.:7 c2.:m7 f2.:7
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Up Jazz Waltz [Dave Brubeck 1957]" 190

  \xTextMark \markup{ \bold \box "A1" }

  f2. | bf2 fs4 | a2 g4 | g2. |
  \break
  g2. | ef'2 b4 | d2 c4 | c4 d4 ef4 |

  \sect "B"

  f4 f4 f4 | a4 a4 a4 | f2.~ | f4 d4 ef4 |
  \break
  f4 f4 f4 | a4 a4 a4 | f2.~ | f4 r4 r4 |

  \sect "A2"

  f,2. | bf2 fs4 | a2 g4 | g2. |
  \break
  g2. | ef'2 b4 | d2 c4 | c4 d4 ef4 |

  \sect "C"

  f2 f4 | c'2 bf4 | b,4. c8 b8 c8 | a'2 g4 |
  \break
  f4 f4 f4 | f2 f4 | f2.~ | f2 r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
