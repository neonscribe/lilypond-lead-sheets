%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Tin Roof Blues - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tin Roof Blues - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Tin Roof Blues - Ly - Bb Bass for Standard"}

%}
