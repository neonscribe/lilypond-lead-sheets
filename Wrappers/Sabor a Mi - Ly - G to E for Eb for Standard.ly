%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Sabor a Mi - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sabor a Mí - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Sabor a Mi - Ly - G to E for Eb for Standard"}

%}
