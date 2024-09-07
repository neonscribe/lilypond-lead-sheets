%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Deep Purple - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Deep Purple - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Deep Purple - Ly - F Bass for Standard"}

%}
