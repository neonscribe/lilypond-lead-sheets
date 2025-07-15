%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Day In Day Out - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Day In, Day Out - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Day In Day Out - Ly - C Bass for Standard"}

%}
