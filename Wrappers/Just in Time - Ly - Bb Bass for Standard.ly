%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Just in Time - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just in Time - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Just in Time - Ly - Bb Bass for Standard"}

%}
