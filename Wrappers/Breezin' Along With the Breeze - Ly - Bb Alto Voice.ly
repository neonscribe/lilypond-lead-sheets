%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Kay Starr Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Breezin' Along With the Breeze - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Breezin' Along With the Breeze - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Breezin' Along With the Breeze - Ly - Bb Alto Voice"}

%}
