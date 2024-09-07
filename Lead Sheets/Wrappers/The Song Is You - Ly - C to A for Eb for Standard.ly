%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/The Song Is You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Song Is You - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The Song Is You - Ly - C to A for Eb for Standard"}

%}
