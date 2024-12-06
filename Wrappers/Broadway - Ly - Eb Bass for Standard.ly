%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Broadway - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Broadway - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Broadway - Ly - Eb Bass for Standard"}

%}
