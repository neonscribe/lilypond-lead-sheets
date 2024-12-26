%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Anita O'Day Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/We'll Be Together Again - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{We'll Be Together Again - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/We'll Be Together Again - Ly - G Alto Voice"}

%}
