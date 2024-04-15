%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday Key"
whatKey = c
whatClef = "treble"

\include "../Core/Comes Love - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Comes Love - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Comes Love - Ly - Cm Alto Voice"}

%}
