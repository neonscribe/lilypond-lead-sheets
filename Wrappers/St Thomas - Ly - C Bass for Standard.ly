%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/St Thomas - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{St. Thomas - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/St Thomas - Ly - C Bass for Standard"}

%}
