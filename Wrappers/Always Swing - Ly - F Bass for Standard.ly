%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Always Swing - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Always (4/4) - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Always Swing - Ly - F Bass for Standard"}

%}
