%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,,
whatClef = "bass"

\include "../Core/The Shiek of Araby - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Shiek of Araby - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Shiek of Araby - Ly - Bb Bass for Standard"}

%}
