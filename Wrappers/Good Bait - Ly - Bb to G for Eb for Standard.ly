%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/Good Bait - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Good Bait - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Good Bait - Ly - Bb to G for Eb for Standard"}

%}
