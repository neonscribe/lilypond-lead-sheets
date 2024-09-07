%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/Love for Sale - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love for Sale - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Love for Sale - Ly - Bb to G for Eb for Standard"}

%}
