%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Miss Otis Regrets - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Miss Otis Regrets - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Miss Otis Regrets - Ly - Eb to C for Eb for Standard"}

%}
