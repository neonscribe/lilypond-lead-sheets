%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/I Surrender Dear - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Surrender, Dear - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I Surrender Dear - Ly - C Bass for Standard"}

%}
