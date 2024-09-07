%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Swing"
whatKey = a,
whatClef = "treble"

\include "../Core/Songe d'Automne Swing - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Songe d'Automne Swing - Cm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Songe d'Automne Swing - Ly - Cm to Am for Eb for Standard"}

%}
