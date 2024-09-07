%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Alice in Wonderland - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Alice in Wonderland - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Alice in Wonderland - Ly - C to A for Eb for Standard"}

%}
