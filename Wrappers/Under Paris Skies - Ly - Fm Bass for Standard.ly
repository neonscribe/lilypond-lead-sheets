%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Under Paris Skies - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Under Paris Skies - Fm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Under Paris Skies - Ly - Fm Bass for Standard"}

%}
