%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day, Cass Elliot Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Dream a Little Dream of Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dream a Little Dream of Me - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Dream a Little Dream of Me - Ly - C Alto Voice"}

%}
