%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Pent Up House - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Pent Up House - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Pent Up House - Ly - G Standard"}

%}
