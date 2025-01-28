%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/When You Wish Upon a Star - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When You Wish Upon a Star - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/When You Wish Upon a Star - Ly - C to D for Bb Low for Standard"}

%}
