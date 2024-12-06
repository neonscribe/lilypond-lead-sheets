%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Andy Williams Key"
whatKey = e
whatClef = "treble"

\include "../Core/Sleigh Ride - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sleigh Ride - E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Sleigh Ride - Ly - E Baritone Voice"}

%}
