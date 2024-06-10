%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (and (defined? 'printNoteNames) printNoteNames)
      (not (string=? instrument "Standard Key")))
   (set-global-staff-size 18))

\header {
  title = "Do You Know What It Means to Miss New Orleans"
  subtitle = \instrument
  poet = "Eddie De Lange"
  composer = "Louis Alter"
  copyright = "© 1946 De Lange Music Co."
}

refrainLyrics = \lyricmode {
Do you know what it means to miss New Or -- leans,
and miss it each night and day?
I know I'm not wrong,
the feel -- in's get -- tin' strong -- er the long -- er I stay a -- way.

Miss the moss cov -- ered vines, the tall su -- gar pines
where mock -- in' -- birds used to sing.
And I'd like to see the la -- zy Mis -- sis -- sip -- pi
a hur -- ry -- in' in -- to spring.

The moon -- light on the bay -- ou, a cre -- ole tune that fills the air;
I dream a -- bout mag -- nol -- ias in June,
and soon I'm wish -- in' that I was there.

Do you know what it means to miss New Or -- leans,
when that's where you left your heart?
And there's some -- thing more:
I miss the one I care for more than I miss New Or -- leans.
}

refrainChords = \chordmode {
  s4

  c2:maj7 g2:7.5+ c2:maj7 a2:m7 e2:m7 a2:m7 d1:7
  d2:m7 ds2:dim7 e2:m7 a2:7 d2:m7 af2:7 g1:7

  c2:maj7 g2:7.5+ c2:maj7 a2:m7 e2:m7 a2:m7 d1:7
  d2:m7 ds2:dim7 e2:m7 a2:7 d2:m7 g2:7 c1:6
  
  bf2:m7 ef2:7 af2:6 f2:7 bf2:m7 ef2:7 af1:6
  a2:m7 d2:7 g2:maj7 e2:m7 a2:m7 d2:7 d2:m7 g2:7

  c2:maj7 g2:7.5+ c2:maj7 a2:m7 e2:m7 a2:m7 d1:7
  d2:m7 ds2:dim7 e2:m7 a2:7 d2:7 g2:7 c2:6
  \chordOpenParen{ d4:m7 }
  \chordCloseParen{ g4:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Slow Swing" 4 = 120

  \partial 4 c8 d8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  e8 g8 a8 b8~ b4. c8 | b8 a8 g8 a8~ a4. c8 | b8 a8 g8 a8~ a4 c4 | e,2. r8 ef8 |
  \break
  d8 cs8 d8 c'8~ c4. b8 | d8 df8 c8 b8 bf8 a4 e8 | g8 gf8 f8 c'8~ c4 ef,8 d8~ | d2 r4 c8 d8 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  e8 g8 a8 b8~ b4. c8 | b8 a8 g8 a8~ a4. c8 | b8 a8 g8 a8~ a4 c4 | e,2. r8 ef8 |
  \break
  d8 cs8 d8 c'8~ c4. b8 | d8 df8 c8 b8 bf8 a4 e8 | g8 gf8 f8  e8~ e4 g8 c8~ | c2 r4 c4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  c2~ c8 bf8 g8 ef8 | f8 f4.~ f8 c'8 df8 c8 | c2~ c8 bf8 g8 ef8 | f2. c'4 |
  \break
  b2~ b8 a8 fs8 d8 | e8 fs8 d8 e8~ e8 fs8 g8 b8 | c8 d8 b8 c8~ c4 b8 d8~ | d2 r4 c,8 d8 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  e8 g8 a8 b8~ b4. c8 | b8 a8 g8 a8~ a4. c8 | b8 a8 g8 a8~ a4 c4 | e,2. r8 ef8 |
  \break
  d8 cs8 d8 c'8~ c4. b8 | d8 df8 c8 b8 bf8 a4. | e'8 c8 a8 e'8~ e8 a,8 e'4 | c2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
