%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
bassKey = a
whatClef = "treble"

\include "../Core/Con Alma - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Con Alma - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Con Alma - Ly - C to A for Eb for Standard"}

%}
