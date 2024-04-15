%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/Saint James Infirmary - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Saint James Infirmary - Dm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Saint James Infirmary - Ly - Dm Bass for Standard"}

%}
