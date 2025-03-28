%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Nature Boy Four - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nature Boy (4/4) - Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Nature Boy Four - Ly - Em Standard"}

%}
