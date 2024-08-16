%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Moonlight Saving Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moonlight Saving Time - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Moonlight Saving Time - Ly - F Bass for Standard"}

%}
