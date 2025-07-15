%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday Key"
whatKey = ef,
whatClef = "treble_8"

\include "../Core/Easy to Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(You'd Be So) Easy to Love - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Easy to Love - Ly - Eb Alto Voice"}

%}
