%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = cs'
whatClef = "treble"

\include "../Core/Dance of the Sugar Plum Fairy - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dance of the Sugar Plum Fairy - Em to C\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Dance of the Sugar Plum Fairy - Ly - Em to Csm for Eb for Standard"}

%}
