%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = g,
whatClef = "treble"

\include "../Core/Get Happy - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Get Happy - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Get Happy - Ly - F to G for Bb Low for Standard"}

%}
