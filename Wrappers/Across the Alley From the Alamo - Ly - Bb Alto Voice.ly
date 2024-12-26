%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Across the Alley From the Alamo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Across the Alley From the Alamo - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Across the Alley From the Alamo - Ly - Bb Alto Voice"}

%}
