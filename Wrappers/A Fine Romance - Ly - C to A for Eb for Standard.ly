%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/A Fine Romance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Fine Romance - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/A Fine Romance - Ly - C to A for Eb for Standard"}

%}
