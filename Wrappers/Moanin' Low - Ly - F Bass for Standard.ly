%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Moanin' Low - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moanin' Low - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Moanin' Low - Ly - F Bass for Standard"}

%}
