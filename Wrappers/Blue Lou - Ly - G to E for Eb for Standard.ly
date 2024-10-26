%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/Blue Lou - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Lou - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Blue Lou - Ly - G to E for Eb for Standard"}

%}
