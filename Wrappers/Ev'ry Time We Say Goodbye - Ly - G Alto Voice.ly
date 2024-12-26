%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Lady Gaga Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Ev'ry Time We Say Goodbye - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ev'ry Time We Say Goodbye - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Ev'ry Time We Say Goodbye - Ly - G Alto Voice"}

%}
