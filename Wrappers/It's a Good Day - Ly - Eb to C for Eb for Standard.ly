%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/It's a Good Day - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's a Good Day - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/It's a Good Day - Ly - Eb to C for Eb for Standard"}

%}
