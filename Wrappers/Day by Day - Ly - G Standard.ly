%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Day by Day - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Day by Day - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Day by Day - Ly - G Standard"}

%}
