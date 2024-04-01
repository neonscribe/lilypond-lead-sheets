%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Meditation - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Meditation (Meditação) - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Meditation - Ly - C Bass for Standard"}

%}
