%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/West Coast Blues - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{West Coast Blues - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/West Coast Blues - Ly - Bb to G for Eb for Standard"}

%}
