%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Thelma Harper, Grace Kelly Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Unchain My Heart - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Unchain My Heart - C\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Unchain My Heart - Ly - Csm Alto Voice"}

%}
