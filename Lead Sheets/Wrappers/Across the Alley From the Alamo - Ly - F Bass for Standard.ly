%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Across the Alley From the Alamo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Across the Alley From the Alamo - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Across the Alley From the Alamo - Ly - F Bass for Standard"}

%}
