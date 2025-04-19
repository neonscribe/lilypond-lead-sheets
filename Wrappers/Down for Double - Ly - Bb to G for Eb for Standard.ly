%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Down for Double - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Down for Double - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Down for Double - Ly - Bb to G for Eb for Standard"}

%}
