%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = a,
whatClef = "bass"

\include "../Core/Sunny - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sunny - Am Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Sunny - Ly - Am Bass for Standard"}

%}
