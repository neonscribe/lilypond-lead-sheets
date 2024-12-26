%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Barbra Streisand Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Can't Help Lovin' Dat Man - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Can't Help Lovin' Dat Man - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Can't Help Lovin' Dat Man - Ly - Bb Alto Voice"}

%}
