%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Across the Alley From the Alamo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Across the Alley From the Alamo - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Across the Alley From the Alamo - Ly - F to G for Bb for Standard"}

%}
