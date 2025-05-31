%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Inner Urge - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Inner Urge - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Inner Urge - Ly - C Bass for Standard"}

%}
