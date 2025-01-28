%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Singin' in the Rain - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Singin' in the Rain - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Singin' in the Rain - Ly - G to E for Eb for Standard"}

%}
