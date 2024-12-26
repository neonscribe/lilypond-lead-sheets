%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Easy to Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(You'd Be So) Easy to Love - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Easy to Love - Ly - C Bass for Standard"}

%}
