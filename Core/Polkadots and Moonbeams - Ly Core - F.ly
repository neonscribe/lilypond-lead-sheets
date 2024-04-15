%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

$(if (and (defined? 'printNoteNames) printNoteNames)
     (set-global-staff-size 16))

\header {
  title = "Polkadots and Moonbeams"
  subtitle = \instrument
  poet = "Johnny Burke"
  composer = "Jimmy Van Heusen"
  copyright = "© 1940 ABC Music Corp."
}

refrainLyricsOne = \lyricmode {
A coun -- try dance was be -- ing held in a gar -- den,
I felt a bump and heard an “Oh, beg your par -- don,”
Sud -- den -- ly I saw pol -- ka -- dots and moon -- beams
All a -- round a pug -- nosed dream. _ _ _

ques -- tions in the eyes of oth -- er dan -- cers
As we float -- ed o -- ver the floor,
There were ques -- tions, but my heart knew all the ans -- wers,
And per -- haps a few things more.

Now in a cot -- tage built of li -- lacs and laugh -- ter,
I know the mean -- ing of the words “ev -- er af -- ter”
And I'll al -- ways see pol -- ka -- dots and moon -- beams
When I kiss the pug -- nosed dream.
}

refrainLyricsTwo = \lyricmode {
The mu -- sic star -- ted and was I the per -- plexed one.
I held my breath and said, “May I have the next one?”
In my fright -- ened arms, pol -- ka -- dots and moon -- beams
Spar -- kled on a pug -- nosed _ dream. There were
}

refrainChords = \chordmode {
  f2:maj7 d2:m7 g2:m7 c2:7 a2:m7 d2:m7 g2:m7 a2:7
  d2:m d2:m7+ d2:m7 a4:m7 af4:m7 g2:m7 c2:7
  
  a4:m7 d4:7.9- g4:m7 c4:7

  f2:6 b4:m7.5- e4:7

  a2:maj7 as2:dim7 b2:m7 e2:7 cs2:m7 fs2:m7 b2:m7 e2:7
  a2:maj7 as2:dim7 b2:m7 e2:7 fs2:m7 b2:7.9- g2:m7 c2:7

  f2:maj7 d2:m7 g2:m7 c2:7 a2:m7 d2:m7 g2:m7 a2:7
  d2:m d2:m7+ d2:m7 a4:m7 af4:m7 g2:m7 c2:7 f2:6
  \chordOpenParen{ g4:m7 }
  \chordCloseParen{ c4:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 60

  \mark \markup{ \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r8 c8 d8 e8 f8 g8 a8 c8 | a4 g8 f8 e4 d4 | r8 c8 d8 e8 f8 g8 a8 c8 | d4 c8 bf8 a4 g4 |
  \break
  f8 g8 f8 g8 f2 | a8 a8 g8 f8 e4 ef4 | d8 bf'8 g8 f8 e4 d'4 |
  \alternative { \volta 1 {
  c1 |
  } \volta 2 {
  f,2. e8 fs8 |
  } } }
  \break

  \mark \markup{ \box "B" }
  
  e4 cs'2 e8 ef8 | d8 cs8 b8 a8 gs4 e4 | e8 fs8 fs8 gs8 \tuplet 3/2 { gs4 a4 cs4 } | e2. e,8 fs8 |
  \break
  e4 cs'2 e8 ef8 | d8 cs8 b8 a8 gs4 e4 | r8 a4 b8 a4 bf4 | c4 bf4 g4 r4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  r8 c,8 d8 e8 f8 g8 a8 c8 | a4 g8 f8 e4 d4 | r8 c8 d8 e8 f8 g8 a8 c8 | d4 c8 bf8 a4 g4 |
  \break
  f8 g8 f8 g8 f2 | a8 a8 g8 f8 e4 ef4 | d8 bf'8 g8 f8 e4 a4 | f2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
