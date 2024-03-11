%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Swing"
whatKey = d
whatClef = "treble"

\include "../Core/Songe d'Automne Swing - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Songe d'Automne Swing - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Songe d'Automne Swing - Ly - Cm to Dm for Bb for Standard"}

%}
