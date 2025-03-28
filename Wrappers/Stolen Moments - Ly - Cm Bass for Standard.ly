%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Stolen Moments - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stolen Moments - Cm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Stolen Moments - Ly - Cm Bass for Standard"}

%}
