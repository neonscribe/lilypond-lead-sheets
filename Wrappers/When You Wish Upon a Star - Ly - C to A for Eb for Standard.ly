%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/When You Wish Upon a Star - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When You Wish Upon a Star - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/When You Wish Upon a Star - Ly - C to A for Eb for Standard"}

%}
