%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Let's Face the Music and Dance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Face the Music and Dance - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Let's Face the Music and Dance - Ly - C Bass for Standard"}

%}
