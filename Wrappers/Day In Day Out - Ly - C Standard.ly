%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Day In Day Out - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Day In, Day Out - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Day In Day Out - Ly - C Standard"}

%}
