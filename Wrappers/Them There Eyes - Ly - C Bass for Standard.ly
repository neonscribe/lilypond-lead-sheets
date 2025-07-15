%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Them There Eyes - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Them There Eyes - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Them There Eyes - Ly - C Bass for Standard"}

%}
