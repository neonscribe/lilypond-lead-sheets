%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
bassKey = c
whatClef = "bass"

\include "../Core/Con Alma - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Con Alma - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Con Alma - Ly - C Bass for Standard"}

%}
