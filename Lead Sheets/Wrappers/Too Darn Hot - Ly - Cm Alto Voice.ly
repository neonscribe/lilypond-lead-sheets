%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = c,
whatClef = "treble"

\include "../Core/Too Darn Hot - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Darn Hot - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Too Darn Hot - Ly - Cm Alto Voice"}

%}
