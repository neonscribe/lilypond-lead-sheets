%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Blues for Alice - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues for Alice - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Blues for Alice - Ly - F Bass for Standard"}

%}
