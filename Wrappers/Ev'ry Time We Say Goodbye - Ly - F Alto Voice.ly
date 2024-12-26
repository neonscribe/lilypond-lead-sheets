%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Julie London, Diana Krall Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Ev'ry Time We Say Goodbye - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ev'ry Time We Say Goodbye - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Ev'ry Time We Say Goodbye - Ly - F Alto Voice"}

%}
