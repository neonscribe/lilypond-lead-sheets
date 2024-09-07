%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Lover - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lover - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Lover - Ly - C Bass for Standard"}

%}
