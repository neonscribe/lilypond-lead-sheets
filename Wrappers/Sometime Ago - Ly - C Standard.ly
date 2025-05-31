%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Sometime Ago - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sometime Ago - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Sometime Ago - Ly - C Standard"}

%}
