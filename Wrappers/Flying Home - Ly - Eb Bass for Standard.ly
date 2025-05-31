%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Flying Home - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Flying Home - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Flying Home - Ly - Eb Bass for Standard"}

%}
