%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Wrap Your Troubles in Dreams - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Wrap Your Troubles in Dreams - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Wrap Your Troubles in Dreams - Ly - C Standard"}

%}
