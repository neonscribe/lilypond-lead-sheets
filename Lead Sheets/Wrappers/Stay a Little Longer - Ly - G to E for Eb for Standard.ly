%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/Stay a Little Longer - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stay a Little Longer - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Stay a Little Longer - Ly - G to E for Eb for Standard"}

%}
