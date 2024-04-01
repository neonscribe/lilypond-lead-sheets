%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Moanin' - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moanin' - Fm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Moanin' - Ly - Fm Bass for Standard"}

%}
