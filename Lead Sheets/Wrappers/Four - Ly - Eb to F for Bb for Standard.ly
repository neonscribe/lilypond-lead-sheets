%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Four - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Four - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Four - Ly - Eb to F for Bb for Standard"}

%}
