%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/The Touch of Your Lips - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Touch of Your Lips - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The Touch of Your Lips - Ly - C to A for Eb for Standard"}

%}
