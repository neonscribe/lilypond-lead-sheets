%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Peggy Lee Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Fly Me to the Moon - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fly Me to the Moon - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Fly Me to the Moon - Ly - G Alto Voice"}

%}
