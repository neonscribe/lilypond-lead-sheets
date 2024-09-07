%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/The World Is Waiting for the Sunrise 1919 - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The World Is Waiting for the Sunrise 1919 - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The World Is Waiting for the Sunrise 1919 - Ly - C to A for Eb for Standard"}

%}
