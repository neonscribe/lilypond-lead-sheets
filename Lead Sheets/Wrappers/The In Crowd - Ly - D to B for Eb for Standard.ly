%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/The In Crowd - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The “In” Crowd - D to B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The In Crowd - Ly - D to B for Eb for Standard"}

%}
