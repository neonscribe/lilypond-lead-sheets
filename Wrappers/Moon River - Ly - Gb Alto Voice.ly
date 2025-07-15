%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Audrey Hepburn Key"
whatKey = gf,
whatClef = "treble_8"

\include "../Core/Moon River - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moon River - Gb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Moon River - Ly - Gb Alto Voice"}

%}
