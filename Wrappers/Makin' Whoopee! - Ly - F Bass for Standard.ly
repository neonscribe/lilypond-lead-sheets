%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Makin' Whoopee! - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Makin' Whoopee! - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Makin' Whoopee! - Ly - F Bass for Standard"}

%}
