%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Waltz"
whatKey = c
whatClef = "treble"

\include "../Core/Songe d'Automne Waltz - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Songe d'Automne Waltz - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Songe d'Automne Waltz - Ly - Cm Standard"}

%}
