%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Bye Bye Blues - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bye Bye Blues - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Bye Bye Blues - Ly - C Bass for Standard"}

%}
