%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Lazy River - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(Up a) Lazy River - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Lazy River - Ly - F Bass for Standard"}

%}
