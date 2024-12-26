%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Frank Sinatra Key"
whatKey = c
whatClef = "treble"

\include "../Core/My Ideal - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Ideal - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/My Ideal - Ly - C Baritone Voice"}

%}
