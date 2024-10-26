%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,,
whatClef = "bass"

\include "../Core/Cotton Tail - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cotton Tail - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Cotton Tail - Ly - Bb Bass for Standard"}

%}
