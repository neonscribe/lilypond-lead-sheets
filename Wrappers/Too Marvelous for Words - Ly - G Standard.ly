%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Too Marvelous for Words - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Marvelous for Words - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Too Marvelous for Words - Ly - G Standard"}

%}
