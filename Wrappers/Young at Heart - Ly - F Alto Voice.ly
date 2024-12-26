%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Rosemary Clooney Key"
whatKey = f
whatClef = "treble_8"

\include "../Core/Young at Heart - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Young at Heart - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Young at Heart - Ly - F Alto Voice"}

%}
