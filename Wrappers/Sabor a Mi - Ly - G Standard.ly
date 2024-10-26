%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Sabor a Mi - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sabor a Mí - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Sabor a Mi - Ly - G Standard"}

%}
