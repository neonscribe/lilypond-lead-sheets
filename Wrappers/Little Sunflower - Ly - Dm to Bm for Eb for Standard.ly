%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b
bassKey = b
whatClef = "treble"

\include "../Core/Little Sunflower - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Little Sunflower - Dm to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Little Sunflower - Ly - Dm to Bm for Eb for Standard"}

%}
