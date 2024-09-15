%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/When Lights Are Low - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When Lights Are Low - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/When Lights Are Low - Ly - Eb Bass for Standard"}

%}
