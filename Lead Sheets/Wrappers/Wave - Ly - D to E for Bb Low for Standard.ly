%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = e,
whatClef = "treble"

\include "../Core/Wave - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Wave - D to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Wave - Ly - D to E for Bb Low for Standard"}

%}
