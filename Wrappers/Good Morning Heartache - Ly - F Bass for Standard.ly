%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Good Morning Heartache - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Good Morning Heartache - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Good Morning Heartache - Ly - F Bass for Standard"}

%}
