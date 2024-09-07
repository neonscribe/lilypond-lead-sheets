%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Cheek to Cheek - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cheek to Cheek - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Cheek to Cheek - Ly - C to A for Eb for Standard"}

%}
