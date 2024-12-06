%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Three Little Words - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Three Little Words - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Three Little Words - Ly - C Bass for Standard"}

%}
