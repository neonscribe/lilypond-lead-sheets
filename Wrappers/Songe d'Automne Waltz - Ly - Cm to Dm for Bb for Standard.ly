%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Waltz"
whatKey = d
whatClef = "treble"

\include "../Core/Songe d'Automne Waltz - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Songe d'Automne Waltz - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Songe d'Automne Waltz - Ly - Cm to Dm for Bb for Standard"}

%}
