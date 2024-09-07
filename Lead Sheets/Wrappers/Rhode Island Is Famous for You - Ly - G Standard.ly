%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Rhode Island Is Famous for You - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Rhode Island Is Famous for You - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Rhode Island Is Famous for You - Ly - G Standard"}

%}
