%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/She's Funny That Way - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{She's Funny That Way - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/She's Funny That Way - Ly - Eb to F for Bb for Standard"}

%}
