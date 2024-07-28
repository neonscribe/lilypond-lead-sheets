%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/I Only Have Eyes for You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Only Have Eyes for You - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I Only Have Eyes for You - Ly - C Bass for Standard"}

%}
