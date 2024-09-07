%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Some Other Time - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Some Other Time - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Some Other Time - Ly - C Standard"}

%}
