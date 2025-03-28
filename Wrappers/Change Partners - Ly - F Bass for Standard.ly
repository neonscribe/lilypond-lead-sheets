%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Change Partners - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Change Partners - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Change Partners - Ly - F Bass for Standard"}

%}
