%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/I'll Never Smile Again - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Never Smile Again - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I'll Never Smile Again - Ly - Eb Bass for Standard"}

%}
