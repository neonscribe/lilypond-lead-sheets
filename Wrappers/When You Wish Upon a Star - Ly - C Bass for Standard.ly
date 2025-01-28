%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/When You Wish Upon a Star - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When You Wish Upon a Star - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/When You Wish Upon a Star - Ly - C Bass for Standard"}

%}
