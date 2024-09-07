%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Blue Train (Blue Trane) - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Train (Blue Trane) - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Blue Train (Blue Trane) - Ly - Eb Standard"}

%}
