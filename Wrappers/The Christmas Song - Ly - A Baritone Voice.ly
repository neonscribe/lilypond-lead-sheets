%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bing Crosby, Jo Stafford, Joni James Key"
whatKey = a
whatClef = "treble"

\include "../Core/The Christmas Song - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Christmas Song - A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/The Christmas Song - Ly - A Baritone Voice"}

%}
