%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = e,
whatClef = "bass"

\include "../Core/Nature Boy - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nature Boy - Em Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Nature Boy - Ly - Em Bass for Standard"}

%}
