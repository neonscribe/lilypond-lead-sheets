%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Since I Fell for You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Since I Fell for You - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Since I Fell for You - Ly - Eb Standard"}

%}
