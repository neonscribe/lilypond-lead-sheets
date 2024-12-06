%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Petite Fleur - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Petite Fleur - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Petite Fleur - Ly - Gm Standard"}

%}
