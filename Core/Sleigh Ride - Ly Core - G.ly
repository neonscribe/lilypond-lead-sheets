%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Sleigh Ride"
  subtitle = \instrument
  poet = "Mitchell Parish"
  composer = "Leroy Anderson"
  copyright = "© 1948 Woodbury Music Company"
}

refrainLyricsOne = \lyricmode {
  Just hear those sleigh bells jin -- gle -- ing,
  ring -- ting -- tin -- gle -- ing, too.
  Come on, it's love -- ly weath -- er for a
  sleigh ride to -- geth -- er with you.
  Out -- side the
  you. Gid -- dy -- yap, gid -- dy -- yap, gid -- dy -- yap, let's go.
  let's look at the show.
  We're rid -- ing in a won -- der -- land of snow.
  Gid -- dy -- yap, gid -- dy -- yap, gid -- dy -- yap, it's grand, just hold -- ing your hand.
  We're glid -- ing a -- long with a song of a win -- ter -- y fair -- y -- land.
  
  Our cheeks are nice and ros -- y and com -- fy co -- zy are we.
  We're snug -- gled up to -- geth -- er like two birds of a feath -- er would be.
  Let's take that _
  There's a
  birth -- day par -- ty at the home of Farm -- er Gray.
  It -- 'll be the per -- fect end -- ing of a per -- fect day.
  We'll be sing -- ing the songs we love to sing with -- out a sin -- gle stop,
  at the fi -- re -- place while we watch the chest -- nuts pop. Pop! Pop! Pop!
  There's a
  Ives.
  These won -- der -- ful things are the things we re -- mem -- ber all thru our lives!
  Just hear those
  you.
}

refrainLyricsTwo = \lyricmode {
 _ _ _ snow is fall -- ing and friends are call -- ing “Yoo -- Hoo.”
 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
 _ _ _ _ _
 road be -- fore us and sing a cho -- rus or two.
 Come on, it's love -- ly weath -- er for a
 sleigh ride to -- geth -- er with you.
 _ _ _ _ _ _
 hap -- py feel -- ing noth -- ing in the world can buy,
 when they pass a -- round the cof -- fee and the pump -- kin pie.
 It --'ll near -- ly be like a pic -- ture print by Cur -- ri -- er and
}

refrainChords = \chordmode {
  s2.
  
  g2:maj7 e2:m7 a2:m7 d4:7 d4:7/c b2:m7 e2:7.9- a2:m7 d4:7 d4:7.9-
  g2:maj7 e2:m7 a2:m7 d2:7
  
  g2:6 e2:m7 a2:m7 af2:9.11-

  g4:6 c4/g g2 c4/g g2.

  cs1:m7 cs2:m7/fs fs2:7 b1:maj7 b1:maj7
  cs1:m7 cs2:m7/fs fs2:7 b2:maj9 b2:6 b2:maj9 b2:6
  b1:m7 b2:m7/e e2:7 a1:maj7 a1:maj7
  a1:m7 a1:m7 d2:7 a2:m7/d d2:7 af2:9.11+

  g2:maj7 g2:6 a2:m7 d2:7 g2:maj7 e2:m7 a2:m7 d2:7
  g2:maj7 e2:m7 a2:m7 d2:7 g1:6

  bf2 d2:7/a
  
  c2/g g4 d4:7
  
  g2:maj9 a2:m7 bf2:dim7 g2:maj7/b g1:maj9 g1:maj9
  g2:maj9 a2:m6 bf2:dim7 g2:maj7/b g1:maj9 g1:maj9
  gs1:dim7 a2:m7 as2:dim7 g2/b b2:7
  
  e2:m cs2:m7.5- b2/fs cs2:m7.5- cs2:m7 fs2:7 b2 gs2:dim7 d2:7/a d2:7
  
  e2:m a2:7 d2. c4/d d2. c4/d d4 c4/d d4 c4/d d4 r2.
  
  g1:maj9 g4:6.9 g2.:maj9 g4:6.9 g2.:maj9 g4 r2.
}

refrainKey = g

refrainMelody = \relative f' {
  \time 2/2
  \key g \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 150

  \partial 2. d'4 d4 d4 |

  \xTextMark \markup{ \musicglyph #"scripts.segno" \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  d4 e4 d8 b8 g4 | a4 b4 a8 fs8 e4 | d1~ | d4 e4 fs4 a4 |
  d4 e4 d8 b8 a8 g8 | a4 a8 b8 a8 g8 e4 |
  \alternative { \volta 1 {
  g1~ | g4 d'4 d4 d4 |
  } \volta 2 {
  <<
    { \voiceOne
      g,1~ | g2. ds8 e8 |
    }
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
	r4 <e c>4 <d b>2 | <e c>4 <d b>2 r4 |
      }
    }
  >>
  \oneVoice
  } } }
  \sect "B"
  
  %% \key b \major

  b'4 ds,8 e8 b'4 ds,8 e8 | b'4 cs4 as2 | r4 g4 as8 fs8 ds4 | gs1 |
  r4 as4 gs8 e8 cs8 e8 | gs4 b4 as4 cs4 | fs,1~ | fs2. cs8 d8 |

  %% \key a \major

  a'4 cs,8 d8 a'4 cs,8 d8 | a'4 b4 gs2 | r4 a4 gs8 d8 cs4 | fs1 |

  %% \key g \major

  r4 a4 e8 d8 a4 | d4 e8 a8 e4 d8 a8 | d8 e8 a4 d4 a4 | d,4 d'4 d4 d4 |
  
  \break

  \xTextMark \markup{ \bold \box "A3" }
  \bar ".|:-||"
  \repeat volta 2 {
  d4 e4 d8 b8 g4 | a4 b4 a8 fs8 e4 | d1~ | d4 e4 fs4 a4 |

  \xPageBreak

  d4 e4 d8 b8 a8 g8 | a4 a8 b8 a8 g8 e4 \textToCodaFourthTime | g1~ |

  \alternative { \volta 1 {
  g4 d'4 d4 d4 |
  } \volta 2 {
  g,2.\repeatTie fs8 g8 |
  } } }

  \break

  \xTextMark \markup{ \bold \box "C" }
  
  \bar ".|:-||"
  \repeat volta 2 {
  a4 a4 a4 a4 | a4 a4 a4 a4 | d2. g,4 | fs2. d8 e8 |
  fs4 fs4 fs4 fs4 | fs4 fs4 fs4 fs4 | b2. fs4 | e2. b8 c8 |
  d8 c8 b4 b4 d4 | c4 g'4 fs4. e8 | d4 c'4 b4 a4 |
  \alternative { \volta 1 {
  g2. fs8 e8 | fs8 e8 ds4 ds4 e4 | fs4 e'4 ds4 cs4 | b2 r2 | d4 a4 d,4 fs8 g8 |
  } \volta 2 {
  g1 | r4 d'4 a8 g8 d4 | g4 a8 d8 a4 g8 d8 | g8 a8 d4 a4 g4 | d4 d'4 d4 d4 \dalSegnoWithRepeats |
  } } }
  
  \bar "||-|."
  \textCodaBreak
  
  <<
    { \voiceOne
      g,1~ | g1~ | g1~ | g4 r4 r2 |
    }
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
	r4( d4 d4 d4 | d4 a'4 a4 a4 | a4 d4 d4 d4 | g4) s2. |
      }
    }
  >>
  \oneVoice

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
