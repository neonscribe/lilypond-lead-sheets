%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/Dance of the Sugar Plum Fairy - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dance of the Sugar Plum Fairy - Em to F\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Dance of the Sugar Plum Fairy - Ly - Em to Fsm for Bb Low for Standard"}

%}
