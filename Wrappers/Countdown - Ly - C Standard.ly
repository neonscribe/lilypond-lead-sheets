%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Countdown - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Countdown - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Countdown - Ly - C Standard"}

%}
