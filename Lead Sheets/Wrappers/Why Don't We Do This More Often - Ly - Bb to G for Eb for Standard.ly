%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Why Don't We Do This More Often - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Why Don't We Do This More Often - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Why Don't We Do This More Often - Ly - Bb to G for Eb for Standard"}

%}
