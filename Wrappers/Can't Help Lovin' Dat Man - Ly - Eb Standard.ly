%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Can't Help Lovin' Dat Man - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Can't Help Lovin' Dat Man - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Can't Help Lovin' Dat Man - Ly - Eb Standard"}

%}