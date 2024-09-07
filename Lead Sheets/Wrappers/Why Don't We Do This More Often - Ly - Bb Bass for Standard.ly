%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Why Don't We Do This More Often - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Why Don't We Do This More Often - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Why Don't We Do This More Often - Ly - Bb Bass for Standard"}

%}
