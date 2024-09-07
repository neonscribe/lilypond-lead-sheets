%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Stay a Little Longer - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stay a Little Longer - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Stay a Little Longer - Ly - G Standard"}

%}
