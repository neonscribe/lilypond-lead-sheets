%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/The Jitterbug Waltz - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Jitterbug Waltz - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Jitterbug Waltz - Ly - Eb Standard"}

%}
