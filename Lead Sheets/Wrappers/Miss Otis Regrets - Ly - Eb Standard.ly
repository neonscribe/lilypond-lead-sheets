%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Miss Otis Regrets - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Miss Otis Regrets - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Miss Otis Regrets - Ly - Eb Standard"}

%}
