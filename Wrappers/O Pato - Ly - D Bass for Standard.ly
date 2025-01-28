%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/O Pato - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{O Pato - D Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/O Pato - Ly - D Bass for Standard"}

%}
