%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/In the Still of the Night - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In the Still of the Night - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/In the Still of the Night - Ly - Bb Alto Voice"}

%}
