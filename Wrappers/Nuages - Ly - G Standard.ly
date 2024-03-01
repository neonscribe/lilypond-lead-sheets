%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Nuages - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nuages - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Nuages - Ly - G Standard"}

%}
