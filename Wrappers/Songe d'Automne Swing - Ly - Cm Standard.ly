%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Swing"
whatKey = c
whatClef = "treble"

\include "../Core/Songe d'Automne Swing - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Songe d'Automne Swing - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Songe d'Automne Swing - Ly - Cm Standard"}

%}
