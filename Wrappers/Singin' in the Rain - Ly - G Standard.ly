%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Singin' in the Rain - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Singin' in the Rain - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Singin' in the Rain - Ly - G Standard"}

%}
