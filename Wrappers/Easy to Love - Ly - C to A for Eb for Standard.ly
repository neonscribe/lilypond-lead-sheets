%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Easy to Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(You'd Be So) Easy to Love - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Easy to Love - Ly - C to A for Eb for Standard"}

%}
