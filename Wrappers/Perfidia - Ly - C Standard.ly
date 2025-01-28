%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Perfidia - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Perfidia - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Perfidia - Ly - C Standard"}

%}
