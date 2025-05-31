%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
bassKey = d
whatClef = "treble"

\include "../Core/Little Sunflower - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Little Sunflower - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Little Sunflower - Ly - Dm Standard"}

%}
