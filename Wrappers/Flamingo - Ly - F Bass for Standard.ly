%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Flamingo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Flamingo - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Flamingo - Ly - F Bass for Standard"}

%}
