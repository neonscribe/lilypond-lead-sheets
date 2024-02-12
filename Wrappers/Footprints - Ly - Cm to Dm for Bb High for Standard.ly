%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb High for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Footprints - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Footprints - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Footprints - Ly - Cm to Dm for Bb High for Standard"}

%}
