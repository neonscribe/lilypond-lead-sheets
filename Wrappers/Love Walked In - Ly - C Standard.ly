%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Love Walked In - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love Walked In - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Love Walked In - Ly - C Standard"}

%}
