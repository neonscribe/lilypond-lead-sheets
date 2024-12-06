%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Come Sunday - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Come Sunday - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Come Sunday - Ly - Bb to C for Bb Low for Standard"}

%}
