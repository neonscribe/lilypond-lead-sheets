%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/It Never Entered My Mind - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Never Entered My Mind - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/It Never Entered My Mind - Ly - F Bass for Standard"}

%}
