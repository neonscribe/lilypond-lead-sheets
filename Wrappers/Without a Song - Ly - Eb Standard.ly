%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Without a Song - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Without a Song - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Without a Song - Ly - Eb Standard"}

%}
