%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = e
bassKey = e
whatClef = "treble"

\include "../Core/Little Sunflower - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Little Sunflower - Dm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Little Sunflower - Ly - Dm to Em for Bb for Standard"}

%}
