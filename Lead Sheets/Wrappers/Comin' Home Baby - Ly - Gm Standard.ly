%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Comin' Home Baby - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Comin' Home Baby - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Comin' Home Baby - Ly - Gm Standard"}

%}
