%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Little Boat - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Little Boat (O Barquinho) - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Little Boat - Ly - Bb Standard"}

%}
