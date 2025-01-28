%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/It's a Good Day - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's a Good Day - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/It's a Good Day - Ly - Eb Standard"}

%}
