%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Chris Connor Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Gone With the Wind - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Gone With the Wind - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Gone With the Wind - Ly - F Alto Voice"}

%}
