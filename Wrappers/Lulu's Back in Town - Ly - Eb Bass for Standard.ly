%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Lulu's Back in Town - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lulu's Back in Town - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Lulu's Back in Town - Ly - Eb Bass for Standard"}

%}
