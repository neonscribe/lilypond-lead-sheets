%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Miss Otis Regrets - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Miss Otis Regrets - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Miss Otis Regrets - Ly - Eb Bass for Standard"}

%}
