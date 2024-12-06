%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = e,
whatClef = "bass"

\include "../Core/Dance of the Sugar Plum Fairy - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dance of the Sugar Plum Fairy - Em Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Dance of the Sugar Plum Fairy - Ly - Em Bass for Standard"}

%}
