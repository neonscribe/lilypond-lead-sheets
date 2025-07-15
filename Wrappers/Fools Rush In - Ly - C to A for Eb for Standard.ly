%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Fools Rush In - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fools Rush In - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Fools Rush In - Ly - C to A for Eb for Standard"}

%}
