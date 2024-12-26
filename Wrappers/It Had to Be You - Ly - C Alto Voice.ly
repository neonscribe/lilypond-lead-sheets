%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day, Helen Forrest Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/It Had to Be You - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Had to Be You - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/It Had to Be You - Ly - C Alto Voice"}

%}
