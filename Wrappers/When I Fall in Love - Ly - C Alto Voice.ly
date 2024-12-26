%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alto Voice Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/When I Fall in Love - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When I Fall in Love - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/When I Fall in Love - Ly - C Alto Voice"}

%}
