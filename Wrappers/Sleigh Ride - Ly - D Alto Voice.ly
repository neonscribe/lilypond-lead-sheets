%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Gwen Stefani Key"
whatKey = d
whatClef = "treble"

\include "../Core/Sleigh Ride - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sleigh Ride - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Sleigh Ride - Ly - D Alto Voice"}

%}
