%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Hot House - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hot House - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Hot House - Ly - C to D for Bb for Standard"}

%}
