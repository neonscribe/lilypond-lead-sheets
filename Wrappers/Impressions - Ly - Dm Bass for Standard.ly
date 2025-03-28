%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,,
whatClef = "bass"

\include "../Core/Impressions - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Impressions - Dm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Impressions - Ly - Dm Bass for Standard"}

%}
