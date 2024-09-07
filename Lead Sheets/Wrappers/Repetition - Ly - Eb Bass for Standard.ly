%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Repetition - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Repetition - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Repetition - Ly - Eb Bass for Standard"}

%}
