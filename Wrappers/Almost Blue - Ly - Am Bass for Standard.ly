%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = a,
whatClef = "bass"

\include "../Core/Almost Blue - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Almost Blue - Am Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Almost Blue - Ly - Am Bass for Standard"}

%}
