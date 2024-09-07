%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Epistrophy - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Epistrophy - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Epistrophy - Ly - C to A for Eb for Standard"}

%}
