%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/The More I See You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The More I See You - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The More I See You - Ly - Bb Alto Voice"}

%}
