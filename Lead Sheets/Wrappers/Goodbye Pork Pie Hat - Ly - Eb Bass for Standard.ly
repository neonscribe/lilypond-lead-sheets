%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Goodbye Pork Pie Hat - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Goodbye Pork Pie Hat - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Goodbye Pork Pie Hat - Ly - Eb Bass for Standard"}

%}
