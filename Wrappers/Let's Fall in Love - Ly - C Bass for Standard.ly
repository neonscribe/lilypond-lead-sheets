%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Let's Fall in Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Fall in Love - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Let's Fall in Love - Ly - C Bass for Standard"}

%}
