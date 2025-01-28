%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Don't Be That Way - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Be That Way - Db to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Don't Be That Way - Ly - Db to Bb for Eb for Standard"}

%}
