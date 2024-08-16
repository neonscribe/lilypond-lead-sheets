%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Young at Heart - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Young at Heart - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Young at Heart - Ly - Bb Bass for Standard"}

%}
