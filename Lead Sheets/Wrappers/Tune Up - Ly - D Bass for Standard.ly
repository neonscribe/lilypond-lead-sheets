%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/Tune Up - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tune Up - D Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Tune Up - Ly - D Bass for Standard"}

%}
