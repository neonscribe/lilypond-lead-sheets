%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = d,
whatClef = "treble"

\include "../Core/Swing 42 - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Swing 42 - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Swing 42 - Ly - C to D for Bb Low for Standard"}

%}
