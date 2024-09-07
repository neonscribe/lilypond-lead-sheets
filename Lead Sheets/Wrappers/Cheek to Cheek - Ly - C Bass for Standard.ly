%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Cheek to Cheek - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cheek to Cheek - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Cheek to Cheek - Ly - C Bass for Standard"}

%}
