%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Here's That Rainy Day - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Here's That Rainy Day - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Here's That Rainy Day - Ly - G to A for Bb for Standard"}

%}
