%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Tangerine - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tangerine - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Tangerine - Ly - F Bass for Standard"}

%}
