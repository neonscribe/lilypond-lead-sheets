%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Sleigh Ride - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sleigh Ride - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Sleigh Ride - Ly - G to E for Eb for Standard"}

%}
