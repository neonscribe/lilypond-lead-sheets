%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dinah Washington Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Secret Love - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Secret Love - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Secret Love - Ly - Ab Alto Voice"}

%}
