%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Johnny Hartman Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/In the Wee Small Hours of the Morning - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In the Wee Small Hours of the Morning - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/In the Wee Small Hours of the Morning - Ly - Bb Baritone Voice"}

%}
