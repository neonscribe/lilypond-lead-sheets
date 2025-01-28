%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Don't Be That Way - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Be That Way - Db to Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Don't Be That Way - Ly - Db to Eb for Bb for Standard"}

%}
