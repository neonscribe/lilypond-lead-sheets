%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Blue Moon - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Moon - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Blue Moon - Ly - Eb Bass for Standard"}

%}
