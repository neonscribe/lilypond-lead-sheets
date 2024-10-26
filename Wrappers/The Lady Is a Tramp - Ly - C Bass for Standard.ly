%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/The Lady Is a Tramp - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Lady Is a Tramp - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Lady Is a Tramp - Ly - C Bass for Standard"}

%}
