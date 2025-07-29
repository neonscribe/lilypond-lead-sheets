%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Patsy Cline Key"
whatKey = ef
whatClef = "treble_8"

\include "../Core/True Love - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{True Love - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/True Love - Ly - Eb Alto Voice"}

%}
