%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "The Ronettes, Mariah Carey Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Sleigh Ride - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sleigh Ride - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Sleigh Ride - Ly - C Alto Voice"}

%}
