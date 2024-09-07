%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d,
bassKey = d
whatClef = "treble"

\include "../Core/Maiden Voyage - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Maiden Voyage - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Maiden Voyage - Ly - C to D for Bb for Standard"}

%}
