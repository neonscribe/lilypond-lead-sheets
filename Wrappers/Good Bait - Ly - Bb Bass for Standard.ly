%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Good Bait - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Good Bait - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Good Bait - Ly - Bb Bass for Standard"}

%}
