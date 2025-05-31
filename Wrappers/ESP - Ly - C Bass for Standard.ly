%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/ESP - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{E.S.P. - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/ESP - Ly - C Bass for Standard"}

%}
