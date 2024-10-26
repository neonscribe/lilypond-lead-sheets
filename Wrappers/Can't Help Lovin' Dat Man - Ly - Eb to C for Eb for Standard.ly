%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Can't Help Lovin' Dat Man - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Can't Help Lovin' Dat Man - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Can't Help Lovin' Dat Man - Ly - Eb to C for Eb for Standard"}

%}
