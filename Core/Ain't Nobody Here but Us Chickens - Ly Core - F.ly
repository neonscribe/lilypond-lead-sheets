%% -*- Mode: LilyPond -*-

songID = "2026-06-25T14:18:10.232273Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Ain't Nobody Here but Us Chickens"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Joan Whitney and Alex Kramer"
headerCopyright = "© 1947 Sun Music Co., Inc."

beforeText = \markup { \column {
  \vspace #1
  \line { \large "INTRO: PLAY B SECTION 1 X (form is AB)" }
  \vspace #1
} }
refrainChords = \chordmode {
  \time 4/4

  \bar ".|:"
  \sectNoBar "A"
  \repeat volta 2 {

  f1:6 f1:6 f1:6 f1:7
  \break
  bf1:7 bf1:7 g4:7 r2. r1

  \sect "B"

  f1:6 f1:6 f1:6 f1:7
  \break
  bf1:7 bf1:7 f1:6 f1:6
  \break
  c1:7 c1:7 f1:6 f1:6
  }
}

afterText = \markup { \column {
  \vspace #1
  \line { \large "Intro: Start at B (V plays over)" }
  \line { \large "Arr: Vocals ABAB; V solo; P solo AB, vocals AB" }
  \line { \large "Out: Everyone says: “HEY BOSSMAN, IT'S EASY" }
  \line { \large "PICKENS. THERE AIN'T NOBODY HERE" }
  \line { \large "BUT US CHICKENS!” followed by piano “ta da”" }
} }

refrainKey = f

whatKey = #(or whatKey refrainKey)

\include "../Include/chordsonly.ily"
