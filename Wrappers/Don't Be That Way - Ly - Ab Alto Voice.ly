%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Don't Be That Way - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Be That Way - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Don't Be That Way - Ly - Ab Alto Voice"}

%}
