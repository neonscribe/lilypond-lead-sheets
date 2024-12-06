%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/A Kiss to Build a Dream On - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Kiss to Build a Dream On - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/A Kiss to Build a Dream On - Ly - C Standard"}

%}
