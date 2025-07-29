%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Keely Smith Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Nature Boy Three - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nature Boy (3/4) - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Nature Boy Three - Ly - Cm Alto Voice"}

%}
