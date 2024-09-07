%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/A Fine Romance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Fine Romance - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/A Fine Romance - Ly - C Bass for Standard"}

%}
