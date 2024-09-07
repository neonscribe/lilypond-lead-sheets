%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Epistrophy - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Epistrophy - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Epistrophy - Ly - C Bass for Standard"}

%}
