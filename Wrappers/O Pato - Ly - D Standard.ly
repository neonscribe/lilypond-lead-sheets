%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/O Pato - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{O Pato - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/O Pato - Ly - D Standard"}

%}
