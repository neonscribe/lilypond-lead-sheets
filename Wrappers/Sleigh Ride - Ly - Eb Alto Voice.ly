%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "The Andrews Sisters, Bing Crosby Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Sleigh Ride - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sleigh Ride - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Sleigh Ride - Ly - Eb Alto Voice"}

%}
