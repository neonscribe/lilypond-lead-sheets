%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Perfidia - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Perfidia - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Perfidia - Ly - C Bass for Standard"}

%}
