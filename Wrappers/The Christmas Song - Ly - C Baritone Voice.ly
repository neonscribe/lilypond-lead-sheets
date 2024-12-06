%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Frank Sinatra Key"
whatKey = c
whatClef = "treble"

\include "../Core/The Christmas Song - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Christmas Song - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/The Christmas Song - Ly - C Baritone Voice"}

%}
