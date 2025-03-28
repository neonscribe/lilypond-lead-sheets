%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Spring Can Really Hang You Up the Most - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Can Really Hang You Up the Most - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Spring Can Really Hang You Up the Most - Ly - C Bass for Standard"}

%}
