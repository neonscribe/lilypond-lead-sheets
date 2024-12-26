%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Day by Day - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Day by Day - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Day by Day - Ly - G to E for Eb for Standard"}

%}
