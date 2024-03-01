%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Two Parts, in F, Bass Clef"
whatKey = f,
whatClef = "bass"

\include "../Core/Stumbling - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stumbling - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Stumbling - Ly - F Bass for Standard"}

%}
