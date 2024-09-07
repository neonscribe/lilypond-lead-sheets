%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Helen O' Connell Key"
whatKey = g,
whatClef = "treble"

\include "../Core/Once in a While - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Once in a While - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Once in a While - Ly - G Alto Voice"}

%}
