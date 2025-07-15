%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/It's a Sin to Tell a Lie - Ly Core - C.ly"

%{

\phantomsectiong
\addcontentsline{toc}{section}{It's a Sin to Tell a Lie - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/It's a Sin to Tell a Lie - Ly - F Alto Voice"}

%}
