%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Once I Loved (Amor Em Paz)"
  subtitle = \instrument
  poet = "Ray Gilbert"
  composer = "Antonio Carlos Jobim"
  copyright = "© 1965 Ipanema Music"
}

bossaRhythm = ##t

refrainLyricsOne = \lyricmode {
  Once __ I loved, __
  And I gave so much love to this love,
  You were the world to me; __
  Once __ I cried __ at the
  thought I was fool -- ish and proud and let you
  say good -- bye. __

  let you go, __ I will hold __ you close, __
  Make __ you stay; __
  Be -- cause love is the sad -- dest thing __
  when it goes a -- way,
  Be -- cause love is the sad -- dest thing __
  when it goes a -- way. __
}

refrainLyricsTwo = \lyricmode {
  Then __ one day, __ 
  From my in -- fi -- nite sad -- ness
  you came and brought me love a -- gain;
  Now __ I know __ that no mat -- ter what -- ev -- er be -- falls
  I'll nev -- er
}

refrainChords = \chordmode {
  b1:m7 e1:9.5+ a1:maj7 bf1:dim7
  b1:m7 c1:dim7 cs1:m7 cs1:m7
  
  a1:m7 d1:9.5+ g1:maj7 g1:maj7 gs1:m7.5- cs1:7
  
  fs1:maj7 fs1:7
  
  fs1:maj7 b1:7
  
  e1:maj7 a1:7
  d1:maj7 d1:maj7 ds1:dim7 d1:m6 fs1:7/cs c1:7.5- b1:7
  b2:m7
  \chordInsideParens{ cs2:7.5+ }
  fs1:m
  \chordInsideParens{ fs1:7 }
}

refrainKey = fs

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Slow Bossa Nova"

  \mark \markup{ \box "A" }
  
  \bar ".|:"

  \repeat volta 2 {
  fs1~ | fs2~ fs8 e4 cs8~ | cs1~ | cs2 \tuplet 3/2 { r4 d4 e4 } |
  \break
  \tuplet 3/2 { fs4 fs4 fs4 } \tuplet 3/2 { fs4 fs4 fs4 } |
  fs2 \tuplet 3/2 { a4 gs4 fs4 } |
  \tuplet 3/2 { gs4 e4 cs4~ } cs2~ | cs2. r4 |
  \break
  e1~ | e2~ e8 d4 b8~ | b1~ | b2 \tuplet 3/2 { r4 b4 cs4 } |
  \tuplet 3/2 { d4 d4 cs4 } \tuplet 3/2 { e4 e4 d4 } | 
  cs2 \tuplet 3/2 { b4 d4 cs4 } |
  } \alternative { {
  b8 as4 as8~ as2~ | as2. r4 |
  }{
    \break
  b8 as4 cs8~ cs2 | b8 a4 cs4 b4 gs8~ |
  } }

  \bar "||"

  \mark \markup{ \box "B" }
  
  gs1 | b2~ b8 a4 fs8~ |
  \break
  fs1~ | fs2 \tuplet 3/2 { r4 fs4 gs4 } |
  \tuplet 3/2 { a4 a4 gs4~ } \tuplet 3/2 { gs4 b4 bf4 } | a2~ a8 a4 es8 |
  \break
  gs4 fs8 fs8~ fs2~ | fs2 \tuplet 3/2 { r4 fs4 gs4 } |
  \tuplet 3/2 { a4 a4 gs4~} \tuplet 3/2 { gs4 b4 bf4 } |
  \break
  a2~ a8 a8 es4 | gs4. fs8 fs2~ | fs2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
