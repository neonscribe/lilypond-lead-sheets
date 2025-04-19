%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Irene Kral Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Better Than Anything - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Better Than Anything - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Better Than Anything - Ly - C Alto Voice"}

%}
