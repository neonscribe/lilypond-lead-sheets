%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/Rhode Island Is Famous for You - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Rhode Island Is Famous for You - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Rhode Island Is Famous for You - Ly - G to E for Eb for Standard"}

%}
