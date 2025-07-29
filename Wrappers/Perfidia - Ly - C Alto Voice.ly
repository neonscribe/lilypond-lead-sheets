%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Julie London Key"
whatKey = c,
whatClef = "treble_8"

\include "../Core/Perfidia - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Perfidia - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Perfidia - Ly - C Alto Voice"}

%}
