%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Down for Double - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Down for Double - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Down for Double - Ly - Bb to C for Bb Low for Standard"}

%}
