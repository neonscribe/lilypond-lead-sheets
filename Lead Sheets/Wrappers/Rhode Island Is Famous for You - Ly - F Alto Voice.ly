%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Blossom Dearie Key"
whatKey = f
whatClef = "treble"

\include "../Core/Rhode Island Is Famous for You - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Rhode Island Is Famous for You - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Rhode Island Is Famous for You - Ly - F Alto Voice"}

%}
