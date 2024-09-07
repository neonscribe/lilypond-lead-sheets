%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Swing 42 - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Swing 42 - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Swing 42 - Ly - C to A for Eb for Standard"}

%}
