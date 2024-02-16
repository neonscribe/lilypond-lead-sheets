%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,,
whatClef = "bass"

\include "../Core/Watermelon Man - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Watermelon Man - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Watermelon Man - Ly - F Bass for Standard"}

%}
