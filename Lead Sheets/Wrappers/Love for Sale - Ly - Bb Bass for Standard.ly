%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Love for Sale - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love for Sale - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Love for Sale - Ly - Bb Bass for Standard"}

%}
