%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/The Best Things in Life Are Free - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Best Things in Life Are Free - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Best Things in Life Are Free - Ly - C Bass for Standard"}

%}
