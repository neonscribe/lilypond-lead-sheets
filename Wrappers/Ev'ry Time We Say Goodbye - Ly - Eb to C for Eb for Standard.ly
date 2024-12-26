%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Ev'ry Time We Say Goodbye - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ev'ry Time We Say Goodbye - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Ev'ry Time We Say Goodbye - Ly - Eb to C for Eb for Standard"}

%}
