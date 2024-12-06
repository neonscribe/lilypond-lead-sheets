%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Come Sunday - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Come Sunday - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Come Sunday - Ly - Bb Bass for Standard"}

%}
