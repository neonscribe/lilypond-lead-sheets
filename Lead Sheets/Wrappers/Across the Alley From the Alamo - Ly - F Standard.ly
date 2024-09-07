%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Across the Alley From the Alamo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Across the Alley From the Alamo - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Across the Alley From the Alamo - Ly - F Standard"}

%}
