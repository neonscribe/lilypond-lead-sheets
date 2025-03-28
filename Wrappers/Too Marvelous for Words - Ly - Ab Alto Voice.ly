%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Diana Krall Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Too Marvelous for Words - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Marvelous for Words - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Too Marvelous for Words - Ly - Ab Alto Voice"}

%}
