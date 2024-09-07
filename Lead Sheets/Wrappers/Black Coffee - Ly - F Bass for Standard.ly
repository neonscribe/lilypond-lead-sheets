%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Black Coffee - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Black Coffee - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Black Coffee - Ly - F Bass for Standard"}

%}
