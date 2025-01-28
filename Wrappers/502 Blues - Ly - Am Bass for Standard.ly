%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = a,
whatClef = "bass"

\include "../Core/502 Blues - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{502 Blues - Am Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/502 Blues - Ly - Am Bass for Standard"}

%}
