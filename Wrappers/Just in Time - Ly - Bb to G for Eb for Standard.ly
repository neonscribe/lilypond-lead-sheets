%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Just in Time - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just in Time - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Just in Time - Ly - Bb to G for Eb for Standard"}

%}
