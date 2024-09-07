%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/A Ghost of a Chance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Ghost of a Chance - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/A Ghost of a Chance - Ly - C to A for Eb for Standard"}

%}
