%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Aretha Franklin Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/I Surrender Dear - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Surrender, Dear - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Surrender Dear - Ly - G Alto Voice"}

%}
