%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Anita O'Day, Julie London Key"
whatKey = ef,
whatClef = "treble_8"

\include "../Core/Bewitched - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bewitched - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Bewitched - Ly - Eb Alto Voice"}

%}
