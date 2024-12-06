%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Goodbye - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Goodbye - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Goodbye - Ly - Cm Standard"}

%}
