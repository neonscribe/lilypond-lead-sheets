%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Alice in Wonderland - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Alice in Wonderland - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Alice in Wonderland - Ly - C Bass for Standard"}

%}
