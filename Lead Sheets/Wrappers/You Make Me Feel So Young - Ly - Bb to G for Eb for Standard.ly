%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/You Make Me Feel So Young - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Make Me Feel So Young - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/You Make Me Feel So Young - Ly - Bb to G for Eb for Standard"}

%}
