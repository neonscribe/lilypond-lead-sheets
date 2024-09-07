%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/Stormy Weather - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stormy Weather - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Stormy Weather - Ly - G to E for Eb for Standard"}

%}
