%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Mack the Knife - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mack the Knife - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Mack the Knife - Ly - C Bass for Standard"}

%}
