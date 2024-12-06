%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Tony Bennett Key"
whatKey = ef
whatClef = "treble"

\include "../Core/The Christmas Song - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Christmas Song - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Christmas Song - Ly - Eb Standard"}

%}
