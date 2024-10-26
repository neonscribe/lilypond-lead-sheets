%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ray Price Key"
whatKey = d
whatClef = "treble"

\include "../Core/Night Life - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Night Life - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Night Life - Ly - D Baritone Voice"}

%}
