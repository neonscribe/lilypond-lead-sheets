%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = a,
whatClef = "bass"

\include "../Core/Recorda-Me - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Recorda-Me - Am Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Recorda-Me - Ly - Am Bass for Standard"}

%}
