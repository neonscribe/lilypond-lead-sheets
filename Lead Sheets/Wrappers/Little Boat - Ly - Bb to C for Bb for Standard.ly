%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Little Boat - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Little Boat (O Barquinho) - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Little Boat - Ly - Bb to C for Bb for Standard"}

%}
