%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/Come Sunday - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Come Sunday - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Come Sunday - Ly - Bb to G for Eb for Standard"}

%}
