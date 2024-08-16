%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/West Coast Blues - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{West Coast Blues - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/West Coast Blues - Ly - Bb Bass for Standard"}

%}
