%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Miss Otis Regrets - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Miss Otis Regrets - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Miss Otis Regrets - Ly - Eb to F for Bb for Standard"}

%}
