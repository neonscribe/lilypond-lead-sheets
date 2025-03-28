%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Breezin' Along With the Breeze - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Breezin' Along With the Breeze - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Breezin' Along With the Breeze - Ly - F Standard"}

%}
