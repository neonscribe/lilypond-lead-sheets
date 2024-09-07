%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/At Last - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{At Last - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/At Last - Ly - C Standard"}

%}
