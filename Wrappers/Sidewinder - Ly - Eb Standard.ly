%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Sidewinder - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sidewinder - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Sidewinder - Ly - Eb Standard"}

%}
