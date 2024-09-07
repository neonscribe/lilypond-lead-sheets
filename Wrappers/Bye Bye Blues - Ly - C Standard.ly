%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Bye Bye Blues - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bye Bye Blues - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bye Bye Blues - Ly - C Standard"}

%}
