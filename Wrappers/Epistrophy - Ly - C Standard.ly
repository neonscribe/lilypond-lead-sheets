%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Epistrophy - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Epistrophy - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Epistrophy - Ly - C Standard"}

%}
