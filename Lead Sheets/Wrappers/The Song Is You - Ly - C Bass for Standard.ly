%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/The Song Is You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Song Is You - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Song Is You - Ly - C Bass for Standard"}

%}
