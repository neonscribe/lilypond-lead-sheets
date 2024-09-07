%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Robbin's Nest - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Robbin's Nest - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Robbin's Nest - Ly - C to A for Eb for Standard"}

%}
