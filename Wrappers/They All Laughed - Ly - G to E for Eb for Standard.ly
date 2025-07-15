%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/They All Laughed - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{They All Laughed - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/They All Laughed - Ly - G to E for Eb for Standard"}

%}
