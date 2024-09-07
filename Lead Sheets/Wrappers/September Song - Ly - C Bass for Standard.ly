%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c
whatClef = "bass"

\include "../Core/September Song - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{September Song - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/September Song - Ly - C Bass for Standard"}

%}
