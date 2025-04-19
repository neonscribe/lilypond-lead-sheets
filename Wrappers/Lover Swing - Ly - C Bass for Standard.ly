%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Lover Swing - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lover (4/4) - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Lover Swing - Ly - C Bass for Standard"}

%}
