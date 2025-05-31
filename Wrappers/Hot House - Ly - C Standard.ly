%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Hot House - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hot House - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Hot House - Ly - C Standard"}

%}
