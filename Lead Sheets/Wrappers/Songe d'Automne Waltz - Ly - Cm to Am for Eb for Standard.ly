%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Waltz"
whatKey = a,
whatClef = "treble"

\include "../Core/Songe d'Automne Waltz - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Songe d'Automne Waltz - Cm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Songe d'Automne Waltz - Ly - Cm to Am for Eb for Standard"}

%}
