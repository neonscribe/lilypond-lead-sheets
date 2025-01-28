%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Without a Song - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Without a Song - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Without a Song - Ly - Eb to C for Eb for Standard"}

%}
