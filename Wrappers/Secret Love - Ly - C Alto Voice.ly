%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Keely Smith Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Secret Love - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Secret Love - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Secret Love - Ly - C Alto Voice"}

%}
