%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/The Night Has a Thousand Eyes - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Night Has a Thousand Eyes - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The Night Has a Thousand Eyes - Ly - C to A for Eb for Standard"}

%}
