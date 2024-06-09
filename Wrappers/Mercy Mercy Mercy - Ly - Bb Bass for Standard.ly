%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Mercy Mercy Mercy - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mercy, Mercy, Mercy - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Mercy Mercy Mercy - Ly - Bb Bass for Standard"}

%}
