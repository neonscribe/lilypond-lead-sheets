%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Comin' Home Baby - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Comin' Home Baby - Gm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Comin' Home Baby - Ly - Gm Bass for Standard"}

%}
