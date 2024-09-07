%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "I Remember You"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Victor Schertzinger"
  copyright = "© 1942 by Paramount Music Corporation"
}

verseLyrics = \lyricmode {
  Was it in Ta -- hi -- ti?
  Were we on the Nile?
  Long, long a -- go, say an hour or so
  I re -- call that I saw your smile
}

verseChords = \chordmode {
  a1:m7/g g1:maj7 a1:m/g g1:maj7 a2:m7/g d2:7.9-/g g2 g2:maj7
  a1:m7/g d1:7.9-/g g1 d1:7/c
}

verseKey = g

verseMelody = \relative g' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef

  \xTextMark \markup{ "Verse" }

  a4 a2 g8 a8 | 
  b4 b2. | a4 a2 g8 e8 | fs1 |
  \break
  e4 fs8 g8 a4 b8 c8 | d8. d16 d2. |
  \break
  r4 c8 b8 a4 e8 g8 | b2. fs4 | g1~ | g2. r4
  \bar "||"
}

refrainLyrics = \lyricmode {
  I Re -- mem -- ber You.
  You're the one who made my dreams come true a few kiss -- es a -- go.
  I Re -- mem -- ber You.
  You're the one who said: ''I Love you, too.'' I do. Did -- n't you know?
  I re -- mem -- ber too a dis -- tant bell and stars that fell like rain,
  out of the blue.
  When my life is through and the an -- gels ask me to re -- call
  the thrill of them all,
  then I shall tell them I Re -- mem -- ber You.
}

refrainBopChords = \chordmode {
  g1:maj7 cs2:m11 fs:7 g1:maj7 d2:m7 g2:7
  c1:maj7 f1:7
  b2:m7 e2:7 a2:m7 d:7
  %%
  g1:maj7 cs2:m11 fs:7 g1:maj7 d2:m7 g2:7
  c1:maj7 f1:7
  g1:maj7 d2:m7 g:7
  %%
  c1:maj7 fs2:m7 b:7 e1:maj7 fs2:m7 b:7
  e1:maj7 e2:m7 a:7 d1:maj7 a2:m7 d:7
  %%
  g1:maj7 cs2:m11 fs2:7 g1:maj7 b2:m7.5- e:7
  a1:m7 c2:m7 f:7 b1:m7 cs2:m7.5- c2:dim7
  b2:m7 e2:m7 a2:m7 d2:7 g2:maj7
  \chordOpenParen{ e2:m7 }
  a2:m7
  \chordCloseParen{ d2:7 }
}

refrainOldChords = \chordmode {
  g1 g1:dim7 g1 f2/a g4:sus7 g4:7 c2:maj7 c2:6 c2:m d2:7.9- g1 d2:sus7 d2:7

  g1 g1:dim7 g1 f2/a g4:sus7 g4:7 c2:maj7 c2:6 c2:m d2:7.9- g1 d2:m7/g g2:9
  
  c1 fs2:m7 b2:7 e1 fs2:m7 b2:7 e2:maj7 e2:6 e2:m7 a2:7 d2:maj7 d2:6 d1:7

  g1 g1:dim7 g1 b2:m7.5- e2:7.9- a1:m c2:m c2:m6 g1 a1:9 g2 g4/b bf4:dim7 a2:m7 d2:7.9-
  
  %% 1.
  g2
  \chordOpenParen{ a2:9 }
  \chordCloseParen{ d1:7 }
  
  %% 2.
  %% g1 a4:7.9- d4:13 g2
}

refrainChords =
$(if (and (defined? 'oldChords) oldChords)
  #{
  \chordmode {
  \refrainOldChords
  } #}
  #{
  \chordmode {
    \refrainBopChords
  } #} )

refrainKey = g

refrainMelody = \relative g' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \xTextMark \markup{ "Refrain" \bold \box "A1" }
  \set Score.currentBarNumber = #1
  \tempo "Medium" 4 = 125

  fs4 g d e | fs1 | fs4 g d e | f g c, d |
  \break
  e2. g4 | ef2 \tuplet 3/2 { ef4 f ef } | d1~ | d2. r4
  \bar "||"
  \break
  \xTextMark \markup{ \bold \box "A2" }
  fs4 g d e | fs1 | fs4 g d e | f g c, d |
  \break
  e2. g4 | ef2 \tuplet 3/2 { ef4 f ef } | d1~ | d2. r4
  \bar "||"
  \break
  \xTextMark \markup{ \bold \box "B" }
  b' c g a | b4. b8 b4 a | gs1 | r4 b b a |
  \break
  gs2. e4 | g2 \tuplet 3/2 { g4 a g } | fs1~ | fs2. r4
  \bar "||"
  \break
  \xTextMark \markup{ \bold \box "A3" }
  fs4 g d e | fs1 | fs4 g fs g | d' d d4. df8 |
  \break
  c1 | r4 c \tuplet 3/2 { c d c } | b1 | r4 b a
  $(if (and (defined? 'rememberAllTheThings) rememberAllTheThings)
    #{ 
    \xTextMark \markup { \musicglyph #"scripts.coda" }
    #} )
  g |
  \break
  fs g d e | g2 a2 |
  g1~ | g4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"

\pageBreak

\include "../Include/refrain.ily"
