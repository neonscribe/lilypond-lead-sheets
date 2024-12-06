%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Fascinating Rhythm - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fascinating Rhythm - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Fascinating Rhythm - Ly - Eb Standard"}

%}
