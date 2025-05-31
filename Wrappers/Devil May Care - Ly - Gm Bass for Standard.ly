%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Devil May Care - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Devil May Care - Gm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Devil May Care - Ly - Gm Bass for Standard"}

%}
