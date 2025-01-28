%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Stairway to the Stars - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stairway to the Stars - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Stairway to the Stars - Ly - C to A for Eb for Standard"}

%}
