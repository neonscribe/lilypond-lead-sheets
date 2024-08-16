%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Too Close for Comfort - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Close for Comfort - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Too Close for Comfort - Ly - C Standard"}

%}
