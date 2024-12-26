%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/We'll Be Together Again - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{We'll Be Together Again - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/We'll Be Together Again - Ly - C Bass for Standard"}

%}
