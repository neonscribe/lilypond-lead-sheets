%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Bemsha Swing - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bemsha Swing - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Bemsha Swing - Ly - C Bass for Standard"}

%}
