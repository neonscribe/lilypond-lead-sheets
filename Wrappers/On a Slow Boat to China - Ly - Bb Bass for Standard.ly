%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/On a Slow Boat to China - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{On a Slow Boat to China - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/On a Slow Boat to China - Ly - Bb Bass for Standard"}

%}
