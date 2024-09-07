%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Blues in the Closet - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues in the Closet - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Blues in the Closet - Ly - G to E for Eb for Standard"}

%}
