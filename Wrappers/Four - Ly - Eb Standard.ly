%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Four - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Four - E♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Four - Ly - Eb Standard"}

%}
