%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alto Voice Key"
whatKey = c
whatClef = "treble"

\include "../Core/Where or When - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Where or When - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Where or When - Ly - C Alto Voice"}

%}
