%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Cyrille Aimée Key"
whatKey = d
whatClef = "treble_8"

\include "../Core/Young at Heart - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Young at Heart - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Young at Heart - Ly - D Alto Voice"}

%}
