%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/C Jam Blues - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{C Jam Blues - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/C Jam Blues - Ly - C Bass for Standard"}

%}
