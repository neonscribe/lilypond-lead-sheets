%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = e,
whatClef = "bass"

\include "../Core/Nardis - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nardis - Em Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Nardis - Ly - Em Bass for Standard"}

%}
