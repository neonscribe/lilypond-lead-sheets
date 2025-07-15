%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/You Turned the Tables on Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Turned the Tables on Me - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/You Turned the Tables on Me - Ly - F Bass for Standard"}

%}
