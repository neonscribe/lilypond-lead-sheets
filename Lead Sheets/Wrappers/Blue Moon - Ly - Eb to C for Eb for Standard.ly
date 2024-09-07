%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Blue Moon - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Moon - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Blue Moon - Ly - Eb to C for Eb for Standard"}

%}
