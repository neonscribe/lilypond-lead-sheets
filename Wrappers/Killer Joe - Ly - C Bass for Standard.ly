%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Killer Joe - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Killer Joe - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Killer Joe - Ly - C Bass for Standard"}

%}
