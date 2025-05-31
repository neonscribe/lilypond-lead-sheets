%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Miss Otis Regrets - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Miss Otis Regrets - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Miss Otis Regrets - Ly - Bb Alto Voice"}

%}
