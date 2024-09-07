%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
bassKey = c
whatClef = "treble"

\include "../Core/Maiden Voyage - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Maiden Voyage - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Maiden Voyage - Ly - C Standard"}

%}
