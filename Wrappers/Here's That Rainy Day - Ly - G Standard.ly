%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Here's That Rainy Day - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Here's That Rainy Day - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Here's That Rainy Day - Ly - G Standard"}

%}
