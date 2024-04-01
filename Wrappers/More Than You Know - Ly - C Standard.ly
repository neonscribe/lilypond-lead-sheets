%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/More Than You Know - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{More Than You Know - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/More Than You Know - Ly - C Standard"}

%}
