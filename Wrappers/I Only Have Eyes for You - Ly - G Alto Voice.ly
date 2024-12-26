%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/I Only Have Eyes for You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Only Have Eyes for You - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Only Have Eyes for You - Ly - G Alto Voice"}

%}
