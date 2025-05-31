%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Countdown - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Countdown - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Countdown - Ly - C Bass for Standard"}

%}
