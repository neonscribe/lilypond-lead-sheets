%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Etta James Key"
whatKey = ef,
whatClef = "treble_8"

\include "../Core/Fools Rush In - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fools Rush In - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Fools Rush In - Ly - Eb Alto Voice"}

%}
