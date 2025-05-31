%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/It's You or No One - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's You or No One - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/It's You or No One - Ly - Eb Bass for Standard"}

%}
