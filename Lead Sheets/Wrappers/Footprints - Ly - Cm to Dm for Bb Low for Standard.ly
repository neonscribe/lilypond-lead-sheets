%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = d
bassKey = d
whatClef = "treble"

\include "../Core/Footprints - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Footprints - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Footprints - Ly - Cm to Dm for Bb Low for Standard"}

%}
