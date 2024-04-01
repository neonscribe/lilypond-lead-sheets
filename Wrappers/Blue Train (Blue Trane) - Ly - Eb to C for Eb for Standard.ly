%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Blue Train (Blue Trane) - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Train (Blue Trane) - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Blue Train (Blue Trane) - Ly - Eb to C for Eb for Standard"}

%}
