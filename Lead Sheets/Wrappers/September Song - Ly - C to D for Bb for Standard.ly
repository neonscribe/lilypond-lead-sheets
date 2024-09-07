%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/September Song - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{September Song - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/September Song - Ly - C to D for Bb for Standard"}

%}
