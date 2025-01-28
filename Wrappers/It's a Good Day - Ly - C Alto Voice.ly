%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Peggy Lee Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/It's a Good Day - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's a Good Day - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/It's a Good Day - Ly - C Alto Voice"}

%}
