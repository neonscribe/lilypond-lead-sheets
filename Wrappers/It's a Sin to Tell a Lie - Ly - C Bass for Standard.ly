%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/It's a Sin to Tell a Lie - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's a Sin to Tell a Lie - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/It's a Sin to Tell a Lie - Ly - C Bass for Standard"}

%}
