%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alternate Key"
whatKey = c
whatClef = "treble"

\include "../Core/Can't Help Lovin' Dat Man - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Can't Help Lovin' Dat Man - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Can't Help Lovin' Dat Man - Ly - C Standard"}

%}
