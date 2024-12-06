%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/A Kiss to Build a Dream On - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Kiss to Build a Dream On - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/A Kiss to Build a Dream On - Ly - C Bass for Standard"}

%}
