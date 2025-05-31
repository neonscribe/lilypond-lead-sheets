%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,,
whatClef = "bass"

\include "../Core/Blues by Five - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues by Five - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Blues by Five - Ly - Bb Bass for Standard"}

%}
