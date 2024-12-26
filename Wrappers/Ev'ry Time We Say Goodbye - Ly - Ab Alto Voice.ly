%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Carmen McRae Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Ev'ry Time We Say Goodbye - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ev'ry Time We Say Goodbye - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Ev'ry Time We Say Goodbye - Ly - Ab Alto Voice"}

%}
