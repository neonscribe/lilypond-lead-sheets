%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Sleigh Ride - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sleigh Ride - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Sleigh Ride - Ly - G Standard"}

%}
