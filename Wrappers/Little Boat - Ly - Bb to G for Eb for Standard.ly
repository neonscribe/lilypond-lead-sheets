%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Little Boat - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Little Boat (O Barquinho) - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Little Boat - Ly - Bb to G for Eb for Standard"}

%}
