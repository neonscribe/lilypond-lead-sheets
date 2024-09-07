%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Robbin's Nest - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Robbin's Nest - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Robbin's Nest - Ly - C Bass for Standard"}

%}
