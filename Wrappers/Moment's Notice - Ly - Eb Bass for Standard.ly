%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Moment's Notice - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moment's Notice - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Moment's Notice - Ly - Eb Bass for Standard"}

%}
