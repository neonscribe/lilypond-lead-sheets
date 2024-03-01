%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Killer Joe - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Killer Joe - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Killer Joe - Ly - C Standard"}

%}
