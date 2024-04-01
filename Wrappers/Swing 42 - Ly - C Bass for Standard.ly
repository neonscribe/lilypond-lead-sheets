%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Swing 42 - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Swing 42 - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Swing 42 - Ly - C Bass for Standard"}

%}
