%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Are You Lonesome Tonight - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Are You Lonesome Tonight - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Are You Lonesome Tonight - Ly - C Bass for Standard"}

%}
