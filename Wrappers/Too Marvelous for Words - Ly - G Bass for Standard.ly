%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Too Marvelous for Words - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Marvelous for Words - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Too Marvelous for Words - Ly - G Bass for Standard"}

%}
