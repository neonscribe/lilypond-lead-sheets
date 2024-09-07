%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = g,
whatClef = "treble"

\include "../Core/Watermelon Man - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Watermelon Man - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Watermelon Man - Ly - F to G for Bb Low for Standard"}

%}
