%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Baritone Voice Key"
whatKey = f,
whatClef = "treble"

\include "../Core/Too Darn Hot - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Darn Hot - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Too Darn Hot - Ly - Fm Baritone Voice"}

%}
