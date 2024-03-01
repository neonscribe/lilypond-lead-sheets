%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Sugar - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sugar - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Sugar - Ly - Cm Standard"}

%}
