%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/On a Slow Boat to China - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{On a Slow Boat to China - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/On a Slow Boat to China - Ly - Bb to C for Bb for Standard"}

%}
