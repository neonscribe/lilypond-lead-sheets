%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/In Your Own Sweet Way - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In Your Own Sweet Way - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/In Your Own Sweet Way - Ly - Eb to C for Eb for Standard"}

%}
