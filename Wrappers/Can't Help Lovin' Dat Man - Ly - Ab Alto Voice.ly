%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Can't Help Lovin' Dat Man - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Can't Help Lovin' Dat Man - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Can't Help Lovin' Dat Man - Ly - Ab Alto Voice"}

%}
