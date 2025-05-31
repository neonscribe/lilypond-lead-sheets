%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Peace - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Peace - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Peace - Ly - Bb Bass for Standard"}

%}
