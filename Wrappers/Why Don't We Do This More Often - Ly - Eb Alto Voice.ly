%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dolly Houston (with Benny Goodman) Key"
whatKey = ef
whatClef = "treble_8"

\include "../Core/Why Don't We Do This More Often - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Why Don't We Do This More Often - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Why Don't We Do This More Often - Ly - Eb Alto Voice"}

%}
