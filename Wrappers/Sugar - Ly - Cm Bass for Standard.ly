%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
bassKey = c
whatClef = "bass"

\include "../Core/Sugar - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sugar - Cm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Sugar - Ly - Cm Bass for Standard"}

%}
