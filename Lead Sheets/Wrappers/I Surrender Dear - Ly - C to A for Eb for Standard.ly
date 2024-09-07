%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/I Surrender Dear - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Surrender, Dear - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I Surrender Dear - Ly - C to A for Eb for Standard"}

%}
