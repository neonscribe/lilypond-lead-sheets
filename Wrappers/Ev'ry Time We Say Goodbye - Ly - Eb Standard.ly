%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Ev'ry Time We Say Goodbye - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ev'ry Time We Say Goodbye - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Ev'ry Time We Say Goodbye - Ly - Eb Standard"}

%}
