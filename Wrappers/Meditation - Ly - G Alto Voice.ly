%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Astrud Gilberto Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Meditation - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Meditation (Meditação) - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Meditation - Ly - G Alto Voice"}

%}
