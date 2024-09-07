%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/The Shiek of Araby - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Shiek of Araby - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The Shiek of Araby - Ly - Bb to G for Eb for Standard"}

%}
