%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Frank Sinatra (with tommy Dorsey) Key"
whatKey = c
whatClef = "treble"

\include "../Core/I'll Never Smile Again - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Never Smile Again - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/I'll Never Smile Again - Ly - C Baritone Voice"}

%}
