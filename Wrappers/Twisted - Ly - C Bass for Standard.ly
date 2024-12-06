%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Twisted - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Twisted - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Twisted - Ly - C Bass for Standard"}

%}
