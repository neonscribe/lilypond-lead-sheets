%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "for Concert Key instruments"
whatKey = c,
whatClef = "bass"

\include "../Core/Jazz Blues Sharp Keys - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jazz Blues Sharp Keys}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Jazz Blues Sharp Keys - Ly - C Bass for Standard"}

%}
