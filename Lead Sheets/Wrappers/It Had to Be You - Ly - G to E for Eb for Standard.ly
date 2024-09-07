%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/It Had to Be You - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Had to Be You - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/It Had to Be You - Ly - G to E for Eb for Standard"}

%}
