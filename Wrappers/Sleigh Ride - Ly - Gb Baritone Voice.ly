%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Johnny Mathis Key"
whatKey = gf
whatClef = "treble"

\include "../Core/Sleigh Ride - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sleigh Ride - Gb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Sleigh Ride - Ly - Gb Baritone Voice"}

%}
