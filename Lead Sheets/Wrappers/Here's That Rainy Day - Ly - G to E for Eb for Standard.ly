%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Here's That Rainy Day - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Here's That Rainy Day - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Here's That Rainy Day - Ly - G to E for Eb for Standard"}

%}
