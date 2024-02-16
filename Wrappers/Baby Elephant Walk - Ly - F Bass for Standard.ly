%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Baby Elephant Walk - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Baby Elephant Walk - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Baby Elephant Walk - Ly - F Bass for Standard"}

%}
