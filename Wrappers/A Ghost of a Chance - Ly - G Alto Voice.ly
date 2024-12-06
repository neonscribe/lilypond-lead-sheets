%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Mildred Bailey Key"
whatKey = g,
whatClef = "treble"

\include "../Core/A Ghost of a Chance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Ghost of a Chance - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/A Ghost of a Chance - Ly - G Alto Voice"}

%}
