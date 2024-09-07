%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/The Jitterbug Waltz - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Jitterbug Waltz - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The Jitterbug Waltz - Ly - Eb to C for Eb for Standard"}

%}
