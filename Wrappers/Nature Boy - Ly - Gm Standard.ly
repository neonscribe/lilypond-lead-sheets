%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alternate Key"
whatKey = g
whatClef = "treble"

\include "../Core/Nature Boy - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nature Boy - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Nature Boy - Ly - Gm Standard"}

%}
