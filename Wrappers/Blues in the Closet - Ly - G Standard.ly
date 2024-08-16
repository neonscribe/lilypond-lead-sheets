%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Blues in the Closet - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues in the Closet - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Blues in the Closet - Ly - G Standard"}

%}
