%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Blue Christmas - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Christmas - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Blue Christmas - Ly - F Bass for Standard"}

%}
