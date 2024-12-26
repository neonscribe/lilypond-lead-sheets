%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Ev'ry Time We Say Goodbye - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ev'ry Time We Say Goodbye - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Ev'ry Time We Say Goodbye - Ly - Eb Bass for Standard"}

%}
