%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Dolphin Dance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dolphin Dance - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Dolphin Dance - Ly - C Standard"}

%}
