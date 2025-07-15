%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/In the Still of the Night - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In the Still of the Night - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/In the Still of the Night - Ly - C Alto Voice"}

%}
