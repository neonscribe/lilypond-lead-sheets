%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Hot House - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hot House - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Hot House - Ly - C Bass for Standard"}

%}
