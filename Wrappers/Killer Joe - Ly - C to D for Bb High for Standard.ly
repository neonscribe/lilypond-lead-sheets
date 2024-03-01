%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb High for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Killer Joe - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Killer Joe - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Killer Joe - Ly - C to D for Bb High for Standard"}

%}
