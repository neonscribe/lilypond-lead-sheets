%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Mack the Knife - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mack the Knife - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Mack the Knife - Ly - C to A for Eb for Standard"}

%}
