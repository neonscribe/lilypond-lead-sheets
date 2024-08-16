%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/On a Slow Boat to China - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{On a Slow Boat to China - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/On a Slow Boat to China - Ly - Bb Standard"}

%}
