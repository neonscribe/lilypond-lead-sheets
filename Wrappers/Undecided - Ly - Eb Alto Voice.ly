%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Natalie Cole Key"
whatKey = ef
whatClef = "treble_8"

\include "../Core/Undecided - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Undecided - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Undecided - Ly - Eb Alto Voice"}

%}
