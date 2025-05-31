%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Nancy With the Laughing Face - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nancy With the Laughing Face - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Nancy With the Laughing Face - Ly - Eb Bass for Standard"}

%}
