%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Well You Needn't - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Well You Needn't - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Well You Needn't - Ly - F Bass for Standard"}

%}
