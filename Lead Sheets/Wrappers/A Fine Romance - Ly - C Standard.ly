%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/A Fine Romance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Fine Romance - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/A Fine Romance - Ly - C Standard"}

%}
