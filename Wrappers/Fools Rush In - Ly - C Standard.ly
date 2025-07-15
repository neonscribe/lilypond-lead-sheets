%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Fools Rush In - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fools Rush In - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Fools Rush In - Ly - C Standard"}

%}
