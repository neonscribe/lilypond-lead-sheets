%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Three Little Words - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Three Little Words - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Three Little Words - Ly - C to D for Bb for Standard"}

%}
