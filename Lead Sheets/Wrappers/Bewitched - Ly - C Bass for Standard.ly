%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Bewitched - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bewitched - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Bewitched - Ly - C Bass for Standard"}

%}
