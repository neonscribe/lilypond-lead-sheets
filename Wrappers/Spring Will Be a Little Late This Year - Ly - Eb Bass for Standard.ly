%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Spring Will Be a Little Late This Year - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Will Be a Little Late This Year - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Spring Will Be a Little Late This Year - Ly - Eb Bass for Standard"}

%}
