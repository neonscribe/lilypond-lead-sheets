%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Fly Me to the Moon - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fly Me to the Moon - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Fly Me to the Moon - Ly - C to A for Eb for Standard"}

%}
