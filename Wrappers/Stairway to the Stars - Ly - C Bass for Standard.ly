%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Stairway to the Stars - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stairway to the Stars - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Stairway to the Stars - Ly - C Bass for Standard"}

%}
