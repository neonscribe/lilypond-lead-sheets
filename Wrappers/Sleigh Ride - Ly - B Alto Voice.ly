%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Karen Carpenter Key"
whatKey = b
whatClef = "treble"

\include "../Core/Sleigh Ride - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sleigh Ride - B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Sleigh Ride - Ly - B Alto Voice"}

%}
