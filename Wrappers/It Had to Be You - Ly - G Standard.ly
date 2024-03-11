%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/It Had to Be You - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Had to Be You - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/It Had to Be You - Ly - G Standard"}

%}
