%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Bluesette"
  subtitle = \instrument
  poet = "Norman Gimbel"
  composer = "Toots Thielmans"
  copyright = \markup \small "© 1961 Duchess Music Corporation"
}

refrainLyrics = \lyricmode {
Poor lit -- tle, sad lit -- tle blue Blues -- ette.
Don't you cry, don't you fret.
You can bet one luck -- y day you'll wak -- en
and your blues will be for -- sak -- en.
One luck -- y day love -- ly love will come your way. __

Get set, Blues -- ette, true love is com -- ing.
Your trou -- bled heart soon will be hum -- ming Hmm __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Doo -- ya, doo -- ya, doo -- ya, doo -- ya, doo -- ya, doo -- ya,
Doo -- oo -- oo, Blues -- ette. __

Pret -- ty lit -- tle Blues -- ette, must -- n't be a mourn -- er.
Have you heard the news yet? Love is 'round the cor -- ner.
Love wrapped in rain -- bows and tied with pink rib -- bons
to make your next Spring -- time your gold wed -- ding ring time.
So dry your eyes. Don't -- cha pout, don't -- cha fret,
good -- y good times are com -- ing Blues -- ette. __

One luck -- y day love -- ly love will come your way. __
That mag -- ic day __ may just be to -- day. __
}

refrainLyricsTwo = \lyricmode {
Long as there's love in your heart to share,
dear Blues -- ette, don't des -- pair.
Some blue boy is long -- ing just like you,
to find a some -- one to be true to.
Two lov -- ing arms he can nes -- tle in and stay. __ ""
}

refrainChords = \chordmode {
  bf2.:maj7 bf2.:maj7 a2.:m7.5- d2.:7.9-
  g2.:m7 c2.:7.9- f2.:m7 bf2.:7
  ef2.:maj7 ef2.:maj7 ef2.:m7 af2.:9
  df2.:maj7 df2.:maj7 df2.:m7 gf2.:9
  cf2.:maj7 cf2.:maj7 c2.:m7 f2.:9
  d2.:m7 g2.:7 c2.:m7 f2.:7

  bf2.:maj7 bf2.:maj7 a2.:m7.5- d2.:7.9-
  g2.:m7 c2.:9 f2.:m7 bf2.:7
  ef2.:maj7 ef2.:maj7 ef2.:m7 af2.:7
  df2.:maj7 df2.:maj7 df2.:m7 gf2.:9
  cf2.:maj7 cf2.:maj7 c2.:m7 f2.:9
  d2.:m7 g2.:7 c2.:m7 f2.:7

  bf2.:maj7 bf2.:maj7 a2.:m7.5- d2.:7.9-
  g2.:m7 c2.:7 f2.:m7 bf2.:7
  ef2.:maj7 ef2.:maj7 ef2.:m7 af2.:7
  df2.:maj7 df2.:maj7 df2.:m7 gf2.:7
  cf2.:maj7 cf2.:maj7 c2.:m7 f2.:7
  d2.:m7 g2.:7.9- c2.:m7 f2.:7

  cf2.:maj7 cf2.:maj7 c2.:m7 f2.:7 
  d2.:m7 d2.:m7 g4*5:7.5+ g4:7
  c2.:m7 c2.:m7 f2.:sus9 f2.:sus9
  bf2.:6 bf2.:6 bf2.:6 bf2.:6
}

refrainAltChords = \chordmode {
  s2.*21  \chordInsideParens{ df2.:7 } s2. \chordInsideParens{ cf2.:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Jazz Waltz [Toots Thielmans 1963]" 4 = 186

  \sectStart "A1.A2"

  \bar ".|:"
  \repeat volta 2 {
  f4 g4 a4 | bf4 c4 d4 | ef2 g,4 | fs2. |
  %% \break
  d'2 f,4 | e2. | c'2 ef,4 | d2. |
  \break
  bf'2 d,4 | ef4. f8 gf8 af8 | bf2 gf'4 | f2 ef4 |
  %% \break
  af,2 f'4 | ef2 df4 | af2 ff'4 | ef2 df4 \textToCodaLastTime |
  \break
  gf,4 af4 bf4 | cf4 df4 ef4 | f2 ef4 | d2 c4 |
  %% \break
  f,2.~ | f2.~ | f2. | R2.*1 |
  }
  \bar "||-:|."
  
  \sectNoBar "B"

  bf4 c4 d4 | f4 r4 r4 | ef4 d4 c4 | bf2 a4 | g4 a4 bf4 | d2. |
  c4 bf4 af4 | g2 f4 |
  \break
  bf2 d,4 | ef4. d8 ef8 f8 | gf4. af8 bf8 df8 | c4 df4 ef4 |
  af,2 c,4 | df4. ef8 ff8 gf8 | af2 ff'4 | ef2 df4 |
  \break
  gf,8 gf8 af8 af8 bf8 bf8 | cf8 cf8 df8 df8 ef8 ef8 |
  f2 \tuplet 3/2 { ef8( f8 ef8) } | d2 c4 | f,2.~ | f2.~ | f2. | R2.*1 |
  \bar "||"

  \xPageBreak

  \sectNoBarNoBreak "C"

  r4 f'8 f8 f8 f8 | ef4 d2 | r4 ef8 ef8 ef8 ef8 |
  d4 c2 | r4 d8 d8 d8 d8 | c4 bf2 | r4 c8 c8 c8 c8 | bf4 af2 |
  \break
  g4 af4 a4 | bf4 c4 d4 | ef4 e4 f4 | gf4 f4 ef4 |
  af,4 bf4 c4 | df4 d4 ef4 | ff4 f4 gf4 | g4 gf4 ff4 |
  \break
  ef4 r8 df4. | cf4 r8 df4 ef8 | f4 r8 ef4 d8 | c4 r4 a8 g8 |
  f4 f4 f4 | af4 f4. ef8 | f2.~_\markup{ "Solo on " \box "C" ". After solos, D.C. al Coda." }  | f2 r4|
  \bar "||-|."

  \textCodaBreak

  gf4 af4 bf4 | cf4 df4 ef4 | f2 ef4 | d2 c4 |
  g'2.~ | g2.~ | g2 f4 | ef2 d4 | f2.~ | f2.~ | f2 ef4 | d4 bf4. g8 |
  bf2.~ | bf2.~ | bf2.~ | bf2 r4 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
