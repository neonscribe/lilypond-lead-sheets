%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Fascinating Rhythm - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fascinating Rhythm - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Fascinating Rhythm - Ly - Ab Alto Voice"}

%}
