%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Barbra Streisand Key"
whatKey = af,
whatClef = "treble"

\include "../Core/Some Other Time - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Some Other Time - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Some Other Time - Ly - Ab Alto Voice"}

%}
