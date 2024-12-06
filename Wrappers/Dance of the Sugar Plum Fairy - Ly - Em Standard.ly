%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Dance of the Sugar Plum Fairy - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dance of the Sugar Plum Fairy - Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Dance of the Sugar Plum Fairy - Ly - Em Standard"}

%}
