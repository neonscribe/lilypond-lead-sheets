%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/In Your Own Sweet Way - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In Your Own Sweet Way - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/In Your Own Sweet Way - Ly - Eb to F for Bb for Standard"}

%}
