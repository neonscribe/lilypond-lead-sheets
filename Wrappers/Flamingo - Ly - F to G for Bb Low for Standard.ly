%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = g,
whatClef = "treble"

\include "../Core/Flamingo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Flamingo - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Flamingo - Ly - F to G for Bb Low for Standard"}

%}
