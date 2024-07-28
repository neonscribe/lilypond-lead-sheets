%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Across the Alley From the Alamo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Across the Alley From the Alamo - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Across the Alley From the Alamo - Ly - F to D for Eb for Standard"}

%}
