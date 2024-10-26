%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,,
whatClef = "bass"

\include "../Core/In Your Own Sweet Way - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In Your Own Sweet Way - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/In Your Own Sweet Way - Ly - Eb Bass for Standard"}

%}
