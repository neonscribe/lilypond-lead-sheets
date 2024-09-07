%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/You Make Me Feel So Young - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Make Me Feel So Young - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/You Make Me Feel So Young - Ly - Bb Bass for Standard"}

%}
