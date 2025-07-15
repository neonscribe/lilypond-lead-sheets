%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Day In Day Out - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Day In, Day Out - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Day In Day Out - Ly - C to D for Bb for Standard"}

%}
