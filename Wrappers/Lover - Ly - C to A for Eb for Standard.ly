%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Lover - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lover - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Lover - Ly - C to A for Eb for Standard"}

%}
