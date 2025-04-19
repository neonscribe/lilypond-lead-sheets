%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Since I Fell for You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Since I Fell for You - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Since I Fell for You - Ly - Eb to C for Eb for Standard"}

%}
