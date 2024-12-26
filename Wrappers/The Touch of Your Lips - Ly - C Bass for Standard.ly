%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/The Touch of Your Lips - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Touch of Your Lips - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Touch of Your Lips - Ly - C Bass for Standard"}

%}
