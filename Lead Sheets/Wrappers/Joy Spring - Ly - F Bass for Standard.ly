%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Joy Spring - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Joy Spring - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Joy Spring - Ly - F Bass for Standard"}

%}
