%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Annette Hanshaw, Sue Raney Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/I Get the Blues When It Rains - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Get the Blues When It Rains - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Get the Blues When It Rains - Ly - Bb Alto Voice"}

%}
