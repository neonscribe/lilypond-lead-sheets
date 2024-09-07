%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/C Jam Blues - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{C Jam Blues - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/C Jam Blues - Ly - C Standard"}

%}
