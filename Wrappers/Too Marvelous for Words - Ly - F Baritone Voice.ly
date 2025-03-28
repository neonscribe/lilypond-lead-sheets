%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bing Crosby, Nat King Cole, Frank Sinatra Key"
whatKey = f
whatClef = "treble"

\include "../Core/Too Marvelous for Words - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Marvelous for Words - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Too Marvelous for Words - Ly - F Baritone Voice"}

%}
