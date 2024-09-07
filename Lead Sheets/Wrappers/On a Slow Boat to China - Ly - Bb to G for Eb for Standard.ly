%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/On a Slow Boat to China - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{On a Slow Boat to China - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/On a Slow Boat to China - Ly - Bb to G for Eb for Standard"}

%}
