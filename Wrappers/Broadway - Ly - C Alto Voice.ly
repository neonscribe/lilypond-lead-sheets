%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Diana Krall Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Broadway - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Broadway - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Broadway - Ly - C Alto Voice"}

%}
