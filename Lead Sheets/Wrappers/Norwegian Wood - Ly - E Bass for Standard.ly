%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = e,
whatClef = "bass"

\include "../Core/Norwegian Wood - Ly Core - E.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Norwegian Wood - E Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Norwegian Wood - Ly - E Bass for Standard"}

%}
