%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/We Kiss in a Shadow - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{We Kiss in a Shadow - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/We Kiss in a Shadow - Ly - F Bass for Standard"}

%}
