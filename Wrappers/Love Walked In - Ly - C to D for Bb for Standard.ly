%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Love Walked In - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love Walked In - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Love Walked In - Ly - C to D for Bb for Standard"}

%}
