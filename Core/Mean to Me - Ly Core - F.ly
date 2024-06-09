%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (and (defined? 'printNoteNames) printNoteNames)
          (or (string=? instrument "Bass for Standard Key")
              (string=? instrument "Eb for Standard Key")))
   (set-global-staff-size 18))

\header {
  title = "Mean to Me"
  subtitle = \instrument
  poet = ""
  composer = "Fred E. Ahlert and Roy Turk"
  copyright = "© 1929 Chappell & Co."
}

refrainLyrics = \lyricmode {
You're mean to me. __ Why must __ you be mean to me? __
Gee, hon -- ey, it seems to me __ you love to see me cry -- in'.
I don't know why __ I stay home __ each night __
when you say you'll phone __ you don't __ and I'm left a -- lone __
sing -- in' the blues __ and sigh -- in'.
You treat me cold -- ly each day __ in the year. __
You al -- ways scold me when -- ev -- er some -- bod -- y is near, dear.
It must be __ great fun __ to be mean to me, __
you should -- n't, for can't you see what you mean to me? __
}

refrainChords = \chordmode {
  s4
  
  f2:maj7 d2:7.5+ g2:m7 c2:7 f2:maj7 b2:9.5- bf2:maj7 ef2:7
  f2:maj7 d2:7.5+ g2:m7 c2:7 f2:6 d2:m7 g2:m7 c2:7.5+

  f2:maj7 d2:7.5+ g2:m7 c2:7 f2:maj7 b2:9.5- bf2:maj7 ef2:7
  f2:maj7 d2:7.5+ g2:m7 c2:7 f1:6 c2:m7 f2:7.9-
  
  bf2:maj7 g2:m7 c2:m7 f2:7.9- bf1:6 ef2:7 d2:7
  g1:m7 ef2:7 d2:7 g1:7 g2:m7 c2:7.5+.9-

  f2:maj7 d2:7.5+ g2:m7 c2:7 f2:maj7 b2:9.5- bf2:maj7 ef2:7
  f2:maj7 d2:7.5+ g2:m7 c2:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \partial 4 gs4 |
  \bar "||"

  \textMark \markup{ \bold \box "A1" }
  
  a4 c,8 d8~ d2 | bf'4. d,8~ d8 ds8 e4 | c'4 e,8 f8~ f2 | d'4. f,8~ f8 g8 gs4 |
  \break
  a4 c,8 d8~ d2 | bf'8 c8 bf8 c8~ c4 a4 | g4 f2. | g8 a8 g8 c8~ c2 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  a4 c,8 d8~ d2 | bf'4. d,8~ d8 ds8 e4 | c'4 e,8 f8~ f2 | d'4. f,8~ f8 g8 gs4 |
  \break
  a4 c,8 d8~ d2 | bf'8 c8 bf8 c8~ c4 a4 | g4 f2. | r4 d'4 d4 c4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  c2 bf2 | r4 d8 d8~ d8 df8 c4 | bf1 | r4 bf4 bf4 a4 |
  \break
  a2 g2 | r4 bf4 bf4 a4 | a4. d,8~ d8 e8 f4 | g2 gs2 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A3" }

  a4 c,8 d8~ d2 | bf'4. d,8~ d8 ds8 e4 | c'4 e,8 f8~ f2 | d'4. f,8~ f8 g8 gs4 |
  \break
  a4 c,8 d8~ d8 f8 a4 | c2. a4 | a4( f2.~ | f2) r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
