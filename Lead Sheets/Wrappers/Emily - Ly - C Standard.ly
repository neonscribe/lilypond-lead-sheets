%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Emily - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Emily - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Emily - Ly - C Standard"}

%}
