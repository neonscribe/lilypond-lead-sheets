%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alternate Key"
whatKey = d
whatClef = "treble"

\include "../Core/Nature Boy Four - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nature Boy (4/4) - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Nature Boy Four - Ly - Dm Standard"}

%}
