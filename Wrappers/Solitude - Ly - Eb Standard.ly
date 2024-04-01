%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Solitude - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Solitude - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Solitude - Ly - Eb Standard"}

%}
