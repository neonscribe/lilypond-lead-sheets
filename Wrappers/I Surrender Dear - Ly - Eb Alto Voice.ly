%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Julie London Key"
whatKey = ef,
whatClef = "treble_8"

\include "../Core/I Surrender Dear - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Surrender, Dear - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Surrender Dear - Ly - Eb Alto Voice"}

%}
