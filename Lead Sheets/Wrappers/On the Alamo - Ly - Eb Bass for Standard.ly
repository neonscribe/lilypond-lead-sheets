%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/On the Alamo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{On the Alamo - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/On the Alamo - Ly - Eb Bass for Standard"}

%}
