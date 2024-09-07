%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Minor Blues - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Minor Blues (Blues en Mineur) - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Minor Blues - Ly - Gm Standard"}

%}
