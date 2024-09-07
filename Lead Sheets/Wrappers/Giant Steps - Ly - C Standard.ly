%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Giant Steps - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Giant Steps}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Giant Steps - Ly - C Standard"}

%}
