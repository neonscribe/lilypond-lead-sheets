%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Julie London Key"
whatKey = gf,
whatClef = "treble_8"

\include "../Core/Can't Help Lovin' Dat Man - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Can't Help Lovin' Dat Man - Gb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Can't Help Lovin' Dat Man - Ly - Gb Alto Voice"}

%}
