%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Chicago - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Chicago - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Chicago - Ly - C Bass for Standard"}

%}
