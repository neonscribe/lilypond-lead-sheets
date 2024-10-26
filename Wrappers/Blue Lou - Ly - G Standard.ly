%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Blue Lou - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Lou - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Blue Lou - Ly - G Standard"}

%}
