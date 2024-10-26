%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Pent Up House - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Pent Up House - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Pent Up House - Ly - G to E for Eb for Standard"}

%}
