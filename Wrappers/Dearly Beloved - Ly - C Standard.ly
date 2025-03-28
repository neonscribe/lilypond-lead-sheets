%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Dearly Beloved - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dearly Beloved - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Dearly Beloved - Ly - C Standard"}

%}
