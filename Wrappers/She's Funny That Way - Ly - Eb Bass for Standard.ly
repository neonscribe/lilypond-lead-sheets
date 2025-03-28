%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/She's Funny That Way - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{She's Funny That Way - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/She's Funny That Way - Ly - Eb Bass for Standard"}

%}
