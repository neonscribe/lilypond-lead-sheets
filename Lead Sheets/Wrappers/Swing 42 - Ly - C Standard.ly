%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Swing 42 - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Swing 42 - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Swing 42 - Ly - C Standard"}

%}
