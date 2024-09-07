%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/The World Is Waiting for the Sunrise Firehouse - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The World Is Waiting for the Sunrise Firehouse - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The World Is Waiting for the Sunrise Firehouse - Ly - Bb Bass for Standard"}

%}
