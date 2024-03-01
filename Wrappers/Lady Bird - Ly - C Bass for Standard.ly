%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Lady Bird - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lady Bird - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Lady Bird - Ly - C Bass for Standard"}

%}
