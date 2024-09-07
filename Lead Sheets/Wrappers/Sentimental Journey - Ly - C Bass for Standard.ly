%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Sentimental Journey - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sentimental Journey - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Sentimental Journey - Ly - C Bass for Standard"}

%}
