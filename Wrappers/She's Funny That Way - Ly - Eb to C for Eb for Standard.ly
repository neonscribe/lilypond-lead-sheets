%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/She's Funny That Way - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{She's Funny That Way - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/She's Funny That Way - Ly - Eb to C for Eb for Standard"}

%}
