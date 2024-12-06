%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alto Voice Key"
whatKey = g,
whatClef = "treble"

\include "../Core/Bennie and the Jets - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bennie and the Jets - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Bennie and the Jets - Ly - G Alto Voice"}

%}
