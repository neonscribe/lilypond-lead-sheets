%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/The Best Things in Life Are Free - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Best Things in Life Are Free - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The Best Things in Life Are Free - Ly - C to A for Eb for Standard"}

%}
