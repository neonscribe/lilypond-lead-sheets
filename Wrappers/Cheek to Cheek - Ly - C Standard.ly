%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Cheek to Cheek - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cheek to Cheek - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Cheek to Cheek - Ly - C Standard"}

%}
