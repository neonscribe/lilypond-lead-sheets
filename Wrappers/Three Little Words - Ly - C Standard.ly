%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Three Little Words - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Three Little Words - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Three Little Words - Ly - C Standard"}

%}
