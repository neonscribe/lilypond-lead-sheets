%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Let's Face the Music and Dance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Face the Music and Dance - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Let's Face the Music and Dance - Ly - F Alto Voice"}

%}
