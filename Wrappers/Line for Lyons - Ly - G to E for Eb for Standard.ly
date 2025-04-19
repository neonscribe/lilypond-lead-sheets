%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Line for Lyons - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Line for Lyons - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Line for Lyons - Ly - G to E for Eb for Standard"}

%}
