%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Down for Double - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Down for Double - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Down for Double - Ly - Bb Bass for Standard"}

%}
